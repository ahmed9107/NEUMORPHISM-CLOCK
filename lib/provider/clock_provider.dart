import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockProvider extends ChangeNotifier {
  Offset origin = const Offset(0, 0);
  double secondRadius = 70;
  double minuteRadius = 80;
  double hourradius = 50;
  List<Offset> coordinates = [
    const Offset(0, 0),
    const Offset(0, 0),
    const Offset(0, 0)
  ];
  String timeString = ""; //for digital display

  List<Offset> translatTimeToCoordinates() {
    final time = DateTime.now();
    final second = time.second.toDouble();
    final minute = time.minute.toDouble();
    final hour = time.hour.toDouble();

    final secondAngle = 360 / 60 * second * pi / 180;
    final minuteAngle = 360 / (60 * 60) * (minute * 60 + second) * pi / 180;
    final hourAngle = 360 /
        (12 * 60 * 60) *
        ((hour % 12) * 60 * 60 + minute * 60 + second) *
        pi /
        180;

    return [
      convertPolarToRect(radius: secondRadius, angle: secondAngle),
      convertPolarToRect(radius: minuteRadius, angle: minuteAngle),
      convertPolarToRect(radius: hourradius, angle: hourAngle),
    ];
  }

  Offset convertPolarToRect({required double radius, required double angle}) {
    return Offset(
        origin.dx + radius * sin(angle), origin.dy - radius * cos(angle));
  }

  void updateTimeCoordinates() {
    timeString = DateFormat.yMd().add_jms().format(DateTime.now());
    coordinates = translatTimeToCoordinates();
    notifyListeners();
  }
}
