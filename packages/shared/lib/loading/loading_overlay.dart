import 'package:flutter/material.dart';

import 'fancy_loading.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black.withValues(alpha: 0.3),
      child: const Center(child: FancyLoading()),
    );
  }
}
