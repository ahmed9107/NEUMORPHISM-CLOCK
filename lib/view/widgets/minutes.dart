import 'package:flutter/material.dart';
import 'dart:math';

class Minutes extends StatefulWidget {
  const Minutes({Key? key}) : super(key: key);

  @override
  State<Minutes> createState() => _MinutesState();
}

class _MinutesState extends State<Minutes> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final minute = DateTime.now().minute.toDouble();
    final angle = (-pi * (minute / -60)) * 2;
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(0, 30),
          child: Center(
            child: Container(
              height: height * 0.11,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
