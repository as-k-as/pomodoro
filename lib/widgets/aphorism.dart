import 'package:flutter/material.dart';

class Aphorism extends StatelessWidget {
  const Aphorism({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.15),
      ),
      child: const Center(
        child: Text(
          'Aphorisms',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
