import 'dart:math';

import 'package:flutter/material.dart';
import 'package:songtrivia/feature/quiz/widgets/synthesize.dart';

class SynthScreen extends StatefulWidget {
  const SynthScreen({Key? key}) : super(key: key);

  @override
  State<SynthScreen> createState() => _SynthScreenState();
}

class _SynthScreenState extends State<SynthScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;

  late AnimationController _controller;

  Tween<double> _rotationTween = Tween(begin: pi, end: pi);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = _rotationTween.animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ShapePainter(),
      child: Container(),
    );
  }
}
