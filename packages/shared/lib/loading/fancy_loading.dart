import 'dart:async';

import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class FancyLoading extends StatefulWidget {
  const FancyLoading({super.key, this.size = 50});
  final double size;

  @override
  State<FancyLoading> createState() => _FancyLoadingState();
}

class _FancyLoadingState extends State<FancyLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    unawaited(_controller.repeat());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = Theme.of(context).extension<AppColors>()!;
    return RotationTransition(
      turns: _controller,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: CustomPaint(painter: _LoaderPainter(color: appColors.primary)),
      ),
    );
  }
}

class _LoaderPainter extends CustomPainter {
  _LoaderPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final Rect rect = Offset.zero & size;

    paint.color = color;
    canvas.drawArc(rect, 0.0, 2.5, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
