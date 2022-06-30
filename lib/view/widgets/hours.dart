import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Hours extends StatelessWidget {
  const Hours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final hour = double.parse((DateFormat('hh').format(DateTime.now())));
    final angle = (-pi * (hour / -12)) * 2;
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(0, 20),
          child: Center(
            child: Container(
              height: height * 0.06,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
