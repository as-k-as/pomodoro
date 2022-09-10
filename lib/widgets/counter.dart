import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.width,
    required this.height,
    this.nCounter = 4,
    this.ratioCounterSize = 0.6,
  }) : super(key: key);

  final double width;
  final double height;
  final int nCounter;
  final double ratioCounterSize;

  @override
  Widget build(BuildContext context) {
    const colorOn = Colors.blueAccent;
    const colorOff = Colors.grey;
    // Adjust the counter's diameter to the SizedBox's height.
    final diameterCounter = height * ratioCounterSize;

    return SizedBox(
      width: width,
      height: height,
      child: Row(
        children: List.generate(
          nCounter,
          (index) {
            // TODO: Get the value of "countNow" from the state.
            const countNow = 2;
            final colorCounter = index < countNow ? colorOn : colorOff;

            return Expanded(
              flex: 1,
              child: Container(
                width: diameterCounter,
                height: diameterCounter,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorCounter.withOpacity(0.5),
                  border: Border.all(color: colorCounter),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
