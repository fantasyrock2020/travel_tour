import 'dart:io';

import 'package:core/core.dart';
import 'package:domain/entities/place/place_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared/button/gesture_button.dart';
import 'package:shared/image/c_image.dart';

import '../../../../widget/base_state/base_state_less_widget.dart';

class PlaceItemWidget extends BaseStateLess {
  const PlaceItemWidget({required this.place, super.key});

  final Place place;

  @override
  Widget buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureButton(
        onTap: () async {
          final Uri googleMapsUrl = Uri.parse(
            'https://www.google.com/maps/search/?api=1&query=${place.lat},${place.lng}',
          );

          if (!kIsWeb) {
            final Uri geoUrl = Platform.isAndroid
                ? Uri.parse(
                    'geo:${place.lat},${place.lng}?q=${place.lat},${place.lng}',
                  )
                : Uri.parse(
                    'comgooglemaps://?q=${place.lat},${place.lng}&center=${place.lat},${place.lng}',
                  );

            if (await canLaunchUrl(geoUrl)) {
              await launchUrl(geoUrl);
              return;
            }
          }

          if (await canLaunchUrl(googleMapsUrl)) {
            await launchUrl(
              googleMapsUrl,
              mode: LaunchMode.externalApplication,
            );
          } else {
            throw Exception('Could not launch Google Maps');
          }
        },
        child: Row(
          spacing: 12,
          crossAxisAlignment: .start,
          children: <Widget>[
            CImageView(
              url: place.images.firstOrNull,
              size: const Size(90, 90),
              borderRadius: .horizontal(left: const .circular(12)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    spacing: 8,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      PlaceStatusBadge(status: place.openingHours!.statusAt()),
                    ],
                  ),

                  const SizedBox(height: 4),

                  // LOCATION
                  // Text(
                  //   "📍 ${location?.name ?? ""}",
                  //   style: TextStyle(color: Colors.grey.shade600),
                  // ),
                  const SizedBox(height: 4),

                  // TAGS
                  Text(
                    place.tags.join(' • '),
                    style: TextStyle(color: Colors.grey.shade500),
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: <Widget>[
                      Text(
                        '${place.priceLevel.priceSymbol()} • ${place.priceRange}',
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '📍 ${LocationService.intance.calculateDistanceKm(lat: place.lat, lng: place.lng).formatDistance()}',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceStatusBadge extends StatelessWidget {
  const PlaceStatusBadge({required this.status, super.key});

  final PlaceOpenStatusEnum status;

  @override
  Widget build(BuildContext context) {
    if (status == PlaceOpenStatusEnum.unknown) {
      return const SizedBox.shrink();
    }

    final _BadgeStyle style = switch (status) {
      .open || .open24Hours => _BadgeStyle(
        label: 'Open',
        backgroundColor: Colors.green.withValues(alpha: 0.12),
        dotColor: Colors.green,
        textColor: Colors.green.shade700,
      ),
      PlaceOpenStatusEnum.closingSoon => _BadgeStyle(
        label: 'Closing soon',
        backgroundColor: Colors.orange.withValues(alpha: 0.12),
        dotColor: Colors.orange,
        textColor: Colors.orange.shade800,
      ),
      PlaceOpenStatusEnum.openingSoon => _BadgeStyle(
        label: 'Opening soon',
        backgroundColor: Colors.blue.withValues(alpha: 0.12),
        dotColor: Colors.blue,
        textColor: Colors.blue.shade700,
      ),
      PlaceOpenStatusEnum.closed => _BadgeStyle(
        label: 'Closed',
        backgroundColor: Colors.red.withValues(alpha: 0.12),
        dotColor: Colors.red,
        textColor: Colors.red.shade700,
      ),
      PlaceOpenStatusEnum.unknown => _BadgeStyle(
        label: '',
        backgroundColor: Colors.transparent,
        dotColor: Colors.transparent,
        textColor: Colors.transparent,
      ),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              color: style.dotColor,
              shape: BoxShape.circle,
            ),
          ),
          Text(
            style.label,
            style: TextStyle(
              color: style.textColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _BadgeStyle {
  _BadgeStyle({
    required this.label,
    required this.backgroundColor,
    required this.dotColor,
    required this.textColor,
  });

  final String label;
  final Color backgroundColor;
  final Color dotColor;
  final Color textColor;
}
