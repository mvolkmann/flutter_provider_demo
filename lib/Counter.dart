import 'package:flutter/material.dart';
import './CircleButton.dart';

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
    return Row(children: [
      Spacer(),
      CircleButton(
          color: Colors.red, onPressed: decrement, size: 30, text: '-'),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(count.toString(), style: TextStyle(fontSize: 30)),
      ),
      CircleButton(onPressed: increment, size: 30, text: '+'),
      Spacer(),
    ]);
  }
}
