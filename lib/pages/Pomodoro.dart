import 'package:flutter/material.dart';
import 'package:pomodoro/components/EntryTime.dart';
import 'package:pomodoro/components/Stopwatch.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Stopwatch()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntryTime(
                    title: 'Trabalho',
                    value: store.workTime,
                    increment: store.incrementWorkTime,
                    decrement: store.decrementWorkTime,
                  ),
                  EntryTime(
                    title: 'Descanso',
                    value: store.restTime,
                    increment: store.incrementRestTime,
                    decrement: store.decrementRestTime,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
