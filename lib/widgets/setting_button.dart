import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      iconSize: 40,
      color: Colors.blueGrey,
      onPressed: () {},
    );
  }
}
