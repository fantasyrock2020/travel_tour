import 'dart:async';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Visual style of the button.
enum RippleButtonType { fill, outline }

class RippleButton extends StatefulWidget {
  const RippleButton({
    super.key,
    this.text,
    this.child,
    this.icon,
    this.onPressed,
    this.type = RippleButtonType.fill,
    this.width,
    this.height = 48,
    this.borderRadius = 8,
    this.borderWidth = 1,
    this.enabledColor,
    this.disabledColor,
    this.rippleColor,
    this.textColor,
    this.disabledTextColor,
    this.textStyle,
    this.enabled = true,
    this.isLoading = false,
    this.debounceDuration = const Duration(milliseconds: 800),
    this.animationDuration = const Duration(milliseconds: 120),
    this.pressScaleAmount = 0.04,
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
    this.elevation = 0,
  });

  /// Text label. Ignored if [child] is provided.
  final String? text;

  /// Fully custom child. Overrides [text] and [icon] if provided.
  final Widget? child;

  /// Optional leading icon (only used when [child] is null).
  final Widget? icon;

  /// Called when the button is tapped (subject to debounce & enabled/loading state).
  final VoidCallback? onPressed;

  /// Fill or outline style.
  final RippleButtonType type;

  /// Explicit size. If null, button sizes to its content (with padding).
  final double? width;
  final double height;

  final double borderRadius;
  final double borderWidth;

  /// Background color (fill) or border/text color (outline) when enabled.
  final Color? enabledColor;

  /// Background color (fill) or border/text color (outline) when disabled.
  final Color? disabledColor;

  /// Ripple splash color. Defaults to a translucent version of enabledColor.
  final Color? rippleColor;

  /// Text color when enabled. For fill buttons this defaults to white.
  final Color? textColor;

  /// Text color when disabled.
  final Color? disabledTextColor;

  /// Text style override. Color from [textColor]/[disabledTextColor] is merged in.
  final TextStyle? textStyle;

  /// Whether the button is interactive at all.
  final bool enabled;

  /// Shows a spinner instead of the label and blocks taps.
  final bool isLoading;

  /// Minimum time between accepted taps. Extra taps within this window are ignored.
  final Duration debounceDuration;

  /// Duration of the press-scale animation.
  final Duration animationDuration;

  /// How much the button shrinks when pressed (0.0 - 1.0). e.g. 0.05 = shrink to 95%.
  final double pressScaleAmount;

  final EdgeInsetsGeometry padding;
  final double elevation;

  @override
  State<RippleButton> createState() => _RippleButtonState();
}

class _RippleButtonState extends State<RippleButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;

  DateTime? _lastTapTime;
  bool _debounceLocked = false;

  bool get _isInteractive =>
      widget.enabled && !widget.isLoading && widget.onPressed != null;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.0 - widget.pressScaleAmount,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    if (!_isInteractive) {
      return;
    }
    unawaited(_controller.forward());
  }

  void _handleTapUp(TapUpDetails details) {
    if (!_isInteractive) {
      return;
    }
    unawaited(_controller.reverse());
  }

  void _handleTapCancel() {
    if (!_isInteractive) {
      return;
    }
    unawaited(_controller.reverse());
  }

  void _handleTap() {
    if (!_isInteractive) {
      return;
    }

    final DateTime now = DateTime.now();

    // Debounce guard: ignore taps that arrive too soon after the last accepted one.
    if (_debounceLocked ||
        (_lastTapTime != null &&
            now.difference(_lastTapTime!) < widget.debounceDuration)) {
      return;
    }

    _lastTapTime = now;
    _debounceLocked = true;

    widget.onPressed?.call();

    // Release the lock after the debounce window elapses.
    Timer(widget.debounceDuration, () {
      if (mounted) {
        _debounceLocked = false;
      } else {
        _debounceLocked = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isFill = widget.type == RippleButtonType.fill;
    final AppColors appColors = Theme.of(context).extension<AppColors>()!;

    final Color themeEnabledColor = appColors.enableBackgroundButton;
    final Color themeDisabledColor = appColors.disabledBackgroundButton;
    final Color themeEnabledForeground = appColors.enableForegroundButton;
    final Color themeDisabledForeground = appColors.disabledForegroundButton;

    final Color resolvedEnabledColor = widget.enabledColor ?? themeEnabledColor;
    final Color resolvedDisabledColor =
        widget.disabledColor ?? themeDisabledColor;

    final Color activeColor = _isInteractive
        ? resolvedEnabledColor
        : resolvedDisabledColor;

    final Color backgroundColor = isFill ? activeColor : Colors.transparent;

    final Color borderColor = activeColor;

    final Color resolvedTextColor = _isInteractive
        ? (widget.textColor ??
              (isFill ? themeEnabledForeground : resolvedEnabledColor))
        : (widget.disabledTextColor ??
              (isFill ? themeDisabledForeground : resolvedDisabledColor));

    final Color splashColor =
        widget.rippleColor ?? activeColor.withValues(alpha: 0.24);

    final BorderRadius radius = BorderRadius.circular(widget.borderRadius);

    Widget content;
    if (widget.child != null) {
      content = widget.child!;
    } else {
      content = AnimatedSwitcher(
        duration: const Duration(milliseconds: 180),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            FadeTransition(opacity: animation, child: child),
        child: widget.isLoading
            ? SizedBox(
                key: const ValueKey<String>('loading'),
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2.4,
                  valueColor: AlwaysStoppedAnimation<Color>(resolvedTextColor),
                ),
              )
            : Row(
                key: const ValueKey<String>('label'),
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (widget.icon != null) ...<Widget>[
                    IconTheme(
                      data: IconThemeData(color: resolvedTextColor, size: 18),
                      child: widget.icon!,
                    ),
                    const SizedBox(width: 8),
                  ],
                  if (widget.text != null)
                    Text(
                      widget.text!,
                      style:
                          (widget.textStyle ??
                                  const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ))
                              .copyWith(color: resolvedTextColor),
                    ),
                ],
              ),
      );
    }

    return ScaleTransition(
      scale: _scaleAnimation,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Material(
          color: backgroundColor,
          elevation: _isInteractive ? widget.elevation : 0,
          borderRadius: radius,
          child: InkWell(
            onTap: _isInteractive ? _handleTap : null,
            onTapDown: _handleTapDown,
            onTapUp: _handleTapUp,
            onTapCancel: _handleTapCancel,
            borderRadius: radius,
            splashColor: splashColor,
            highlightColor: splashColor.withValues(alpha: 0.12),
            child: Container(
              padding: widget.padding,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: radius,
                border: isFill
                    ? null
                    : Border.all(color: borderColor, width: widget.borderWidth),
              ),
              child: content,
            ),
          ),
        ),
      ),
    );
  }
}
