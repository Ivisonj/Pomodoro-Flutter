import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntryTime extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? increment;
  final void Function()? decrement;

  const EntryTime({
    super.key,
    required this.title,
    required this.value,
    this.increment,
    this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(this.title, style: TextStyle(fontSize: 25)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.decrement,
              child: Icon(Icons.arrow_downward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: store.isWorking() ? Colors.red : Colors.green,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(12),
                minimumSize: const Size(44, 44),
              ),
            ),

            Text('${this.value} min', style: TextStyle(fontSize: 18)),

            ElevatedButton(
              onPressed: this.increment,
              child: Icon(Icons.arrow_upward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: store.isWorking() ? Colors.red : Colors.green,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(12),
                minimumSize: const Size(44, 44),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
