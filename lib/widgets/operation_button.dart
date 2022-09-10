import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  const OperationButton({
    Key? key,
    required this.width,
    required this.height,
    required this.name,
    required this.icon,
    this.colorIcon = Colors.white,
    this.onPressed,
  }) : super(key: key);

  final double width;
  final double height;
  final String name;
  final IconData icon;
  final Color colorIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // Adjust the font size to the ElevatedButton's height.
    final fontsize = height * 0.35;
    final iconsize = height * 0.4;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      icon: Icon(
        icon,
        color: colorIcon,
        size: iconsize,
      ),
      label: Text(
        name,
        style: TextStyle(fontSize: fontsize),
        textAlign: TextAlign.center,
      ),
      onPressed: onPressed,
    );
  }
}
