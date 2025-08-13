import 'package:flutter/material.dart';
import 'package:pomodoro/components/EntryTime.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EntryTime(title: 'Trabalho', value: 25),
              EntryTime(title: 'Descanso', value: 5),
            ],
          ),
        ],
      ),
    );
  }
}
