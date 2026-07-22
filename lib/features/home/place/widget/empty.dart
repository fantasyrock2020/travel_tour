import 'package:core/asset_generator/assets.gen.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class EmptyPlaceWidget extends StatelessWidget {
  const EmptyPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: context.screenWidth * .7),
        child: MyAssets.imagesNoPlace.image(fit: BoxFit.cover),
      ),
    );
  }
}
