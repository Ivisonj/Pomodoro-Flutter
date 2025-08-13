import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/StopwatchButton.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return Container(
          color: store.isWorking() ? Colors.red : Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.isWorking() ? 'Hora de Trabalhar' : 'Hora de descansar',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                '${store.minutes.toString().padLeft(2, '0')}: ${store.seconds.toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 120, color: Colors.white),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.started)
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: StopwatchButton(
                        text: 'Iniciar',
                        icon: Icons.play_arrow,
                        click: store.start,
                      ),
                    ),
                  if (store.started)
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: StopwatchButton(
                        text: 'Parar',
                        icon: Icons.stop,
                        click: store.stop,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: StopwatchButton(
                      text: 'Reiniciar',
                      icon: Icons.refresh,
                      click: store.restart,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
