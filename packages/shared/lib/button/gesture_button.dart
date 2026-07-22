import 'dart:async';

import 'package:flutter/material.dart';

class GestureButton extends StatefulWidget {
  const GestureButton({required this.child, this.onTap, super.key});

  final Widget child;
  final VoidCallback? onTap;

  @override
  State<GestureButton> createState() => _GestureButtonState();
}

class _GestureButtonState extends State<GestureButton> {
  bool _locked = false;

  void _onTap() {
    if (_locked) {
      return;
    }
    _locked = true;
    widget.onTap?.call();

    Timer(const Duration(milliseconds: 250), () {
      _locked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      behavior: .opaque,
      child: widget.child,
    );
  }
}
