import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final double size;
  final String text;

  CircleButton(
      {this.color = Colors.blue,
      required this.onPressed,
      required this.size,
      required this.text,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: CircleBorder(), primary: color),
      child: Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
