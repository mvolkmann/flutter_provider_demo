import 'package:flutter/material.dart';
import 'circle_button.dart';
import 'widget_extensions.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      CircleButton(
          color: Colors.red, onPressed: decrement, size: 50, text: '-'),
      Text(count.toString(), style: TextStyle(fontSize: 30)),
      CircleButton(onPressed: increment, size: 40, text: '+'),
    ].hSpacing(10);

    return Row(
      children: children,
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
