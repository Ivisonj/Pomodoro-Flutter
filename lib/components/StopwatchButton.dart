import 'package:flutter/material.dart';

class StopwatchButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const StopwatchButton({
    super.key,
    required this.text,
    required this.icon,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        textStyle: TextStyle(fontSize: 25),
      ),
      onPressed: click,
      child: Row(children: [Icon(this.icon, size: 35), Text(this.text)]),
    );
  }
}
