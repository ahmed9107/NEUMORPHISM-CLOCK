import 'package:flutter/material.dart';
import 'dart:math';

class Seconds extends StatefulWidget {
  const Seconds({Key? key}) : super(key: key);

  @override
  State<Seconds> createState() => _SecondsState();
}

class _SecondsState extends State<Seconds> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final second = DateTime.now().second.toDouble();
    final angle = (-pi * (second / -60)) * 2;
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(0, 34),
          child: Center(
            child: Container(
              height: height * 0.15,
              width: 2,
              decoration: BoxDecoration(
                color: const Color(0xFFE81466),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
