import 'package:core/extensions/context_extension.dart';
import 'package:domain/entities/place/location_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../widget/base_state/base_state.dart';

class CommuneBottomSheet extends StatefulWidget {
  const CommuneBottomSheet({
    required this.communes,
    required this.onTap,
    super.key,
  });

  final List<Location> communes;
  final ValueChanged<Location> onTap;

  @override
  State<CommuneBottomSheet> createState() => _CommuneBottomSheetState();
}

class _CommuneBottomSheetState extends BaseStateFull<CommuneBottomSheet> {
  late final List<Location> _communes;

  @override
  void initState() {
    super.initState();
    _communes = widget.communes;
  }

  @override
  Widget buildPage(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: context.screenHeight * .8),
      child: Padding(
        padding: .only(bottom: context.padding.bottom),
        child: Column(
          mainAxisSize: .min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Chọn Phường', style: textStyles.titleMedium),
            ),
            Flexible(
              child: ListView(
                padding: .zero,
                children: _communes.map((Location commune) {
                  return ListTile(
                    title: Text(commune.name),
                    subtitle: Text(
                      '(${commune.previousDistricts?.join(', ') ?? ''})',
                    ),
                    onTap: () {
                      context.pop();
                      widget.onTap(commune);
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
