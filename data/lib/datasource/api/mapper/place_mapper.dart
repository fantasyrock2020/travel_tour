import 'package:core/core.dart';
import 'package:domain/entities/place/place_entity.dart';

import 'opening_mapper.dart';

@singleton
class PlaceMapper {
  Place mapJsonToPlace({
    required String locationId,
    required Map<String, dynamic> json,
  }) {
    final List<String> categories =
        (json['category'] as List<dynamic>? ?? <dynamic>[])
            .map((dynamic e) => e.toString())
            .toList();

    final Map<String, dynamic> priceRangeJson =
        json['priceRange'] as Map<String, dynamic>? ?? <String, dynamic>{};

    final int? min = priceRangeJson['min'] as int?;
    final int? max = priceRangeJson['max'] as int?;

    final String? rawAddress = json['address'] as String?;
    // Filter out placeholder "Map" and Google Maps short URLs — keep only real addresses
    final bool isRealAddress =
        rawAddress != null &&
        rawAddress != 'Map' &&
        !rawAddress.startsWith('http');

    final String name = json['name'] as String;
    final bool isAllWeek = json['isAllWeek'] as bool? ?? false;
    final bool isBestChoice = json['isBestChoice'] as bool? ?? false;

    return Place(
      id: '${name.toKeyword() ?? DateTime.now().millisecondsSinceEpoch}',
      name: json['name'] as String,
      locationId: locationId,
      categoryId: categories,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      priceLevel: _resolvePriceLevel(min: min, max: max),
      priceRange: _resolvePriceRange(min: min, max: max),
      tags: categories,
      openingHours: OpeningMapper.parseOpeningHours(
        raw: json['openHours'] as String?,
        isAllWeek: isAllWeek,
      ),
      address: isRealAddress ? rawAddress : null,
      isBestChoice: isBestChoice,
    );
  }

  int? _resolvePriceLevel({int? min, int? max}) {
    final int? representative = max ?? min;
    if (representative == null) {
      return null;
    }

    if (representative <= 50000) {
      return 1;
    }
    if (representative <= 150000) {
      return 2;
    }
    if (representative <= 400000) {
      return 3;
    }
    return 4;
  }

  String? _resolvePriceRange({int? min, int? max}) {
    if (min == null && max == null) {
      return null;
    }
    if (min == null && max != null) {
      return '<${max.formatPriceVnd()}';
    }
    if (min != null && max == null) {
      return '>${min.formatPriceVnd()}';
    }

    return '${min.formatPriceVnd()} - ${max.formatPriceVnd()}';
  }
}
