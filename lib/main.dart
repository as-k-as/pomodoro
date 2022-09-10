import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';

import './widgets/widgets.dart';

const appWidth = 600.0;
const appHeight = 800.0;
const appSize = Size(appWidth, appHeight);

void main() {
  runApp(const PomodoroTimer());
}

class PomodoroTimer extends StatelessWidget {
  const PomodoroTimer({super.key});

  @override
  Widget build(BuildContext context) {
    decideWindowSize();

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _PomodoroTimer(),
    );
  }
}

class _PomodoroTimer extends StatelessWidget {
  const _PomodoroTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: TimerArea(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => OperationButton(
                  width: appWidth * 0.4,
                  height: appHeight * 0.1,
                  name: index == 0 ? 'Start/Pause' : 'Stop/Skip\n(Reset)',
                  icon: index == 0 ? Icons.play_circle_outline : Icons.stop,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: const [
                Center(
                  child: Aphorism(
                    width: appWidth * 0.6,
                    height: appHeight * 0.1,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SettingButton(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerArea extends StatelessWidget {
  const TimerArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: appWidth * 0.9,
      height: appHeight * 0.65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Expanded(
            child: Timer(diameter: appHeight * 0.52),
          ),
          Counter(width: 500, height: 60),
        ],
      ),
    );
  }
}

Future decideWindowSize() async {
  await DesktopWindow.setWindowSize(appSize);
  await DesktopWindow.setMinWindowSize(appSize);
  await DesktopWindow.setMaxWindowSize(appSize);
}
