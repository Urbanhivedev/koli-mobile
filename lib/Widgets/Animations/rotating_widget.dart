import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatingWidget extends StatefulWidget {
  RotatingWidget({required this.child, Key? key}) : super(key: key);

  Widget child;

  @override
  State<RotatingWidget> createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 20),
  )..repeat(period: const Duration(seconds: 20));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: widget.child,
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            // angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
