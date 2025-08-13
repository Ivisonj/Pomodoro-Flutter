import 'package:flutter/material.dart';
import 'package:pomodoro/components/StopwatchButton.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text('25:00', style: TextStyle(fontSize: 120, color: Colors.white)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: StopwatchButton(text: 'Iniciar', icon: Icons.play_arrow),
              ),
              // Padding(
              //   padding: EdgeInsets.all(10),
              //   child: StopwatchButton(text: 'Parar', icon: Icons.stop),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: StopwatchButton(text: 'Reiniciar', icon: Icons.refresh),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
