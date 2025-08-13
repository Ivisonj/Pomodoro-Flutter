import 'package:flutter/material.dart';
import 'package:pomodoro/components/EntryTime.dart';
import 'package:pomodoro/components/Stopwatch.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Stopwatch()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntryTime(title: 'Trabalho', value: 25),
                EntryTime(title: 'Descanso', value: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
