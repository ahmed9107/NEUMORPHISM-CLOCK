import 'package:flutter/material.dart';
import 'package:neumorphism_clock/view/widgets/hours.dart';
import 'package:neumorphism_clock/view/widgets/minutes.dart';
import 'package:neumorphism_clock/view/widgets/seconds.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({Key? key}) : super(key: key);
  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        //elevation: 0.0,
        title: const Text('NEUMORPHISM CLOCK',
            style: TextStyle(color: Colors.black)),
      ),
      body: Center(
          child: Container(
        width: 350.0,
        height: 350.0,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFF9E9E9E),
                  offset: Offset(4, 4),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Color(0xFFFFFFFF),
                  offset: Offset(-4, -4),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ]),
        child: Stack(
          alignment: Alignment.center,
          children: const [
            Seconds(),
            Minutes(),
            Hours(),
          ],
        ),
      )),
    );
  }
}
