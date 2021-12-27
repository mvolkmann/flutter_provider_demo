import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'circle_button.dart';
import 'count_state.dart';
import 'widget_extensions.dart';

class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countState = Provider.of<CountState>(context);
    var children = <Widget>[
      CircleButton(
          color: Colors.red,
          onPressed: () {
            countState.decrement();
          },
          size: 50,
          text: '-'),
      Text(countState.count.toString(), style: TextStyle(fontSize: 50)),
      CircleButton(
          onPressed: () {
            countState.increment();
          },
          size: 50,
          text: '+'),
    ].hSpacing(10);

    return Row(
      children: children,
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
