import 'package:flutter/material.dart';
import 'dart:math';

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
    required this.diameter,
  }) : super(key: key);

  final double diameter;

  @override
  Widget build(BuildContext context) {
    const colorFocus = Colors.orangeAccent;
    const colorRelax = Colors.lightGreen;
    // TODO: Get the value of "isFocus" from the state.
    final isFocus = Random().nextBool();
    final colorTimer = isFocus ? colorFocus : colorRelax;

    //TODO: Implement the timer with state management.
    const time = '12:34';

    // Adjust the circle's width and timer's font size to the diameter of circle.
    final widthCircle = diameter * 0.1;
    final fontsizeTime = diameter * 0.25;

    return Stack(
      children: [
        Center(
          // widthFactor: 0.9,
          // heightFactor: 0.9,
          child: Container(
            width: diameter,
            height: diameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: colorTimer,
                width: widthCircle,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFocus ? 'Focus' : 'Relax',
                style: TextStyle(
                  fontSize: fontsizeTime * 0.4,
                  color: colorTimer,
                ),
              ),
              Text(
                time,
                style: TextStyle(fontSize: fontsizeTime, height: 1.05),
              )
            ],
          ),
        ),
      ],
    );
  }
}
