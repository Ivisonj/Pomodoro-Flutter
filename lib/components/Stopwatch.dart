import 'package:flutter/material.dart';

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
          Text('25:00', style: TextStyle(fontSize: 120, color: Colors.white)),
        ],
      ),
    );
  }
}
