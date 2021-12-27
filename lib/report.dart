import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count_state.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countState = Provider.of<CountState>(context);
    return Text('In report, count = ${countState.count}');
  }
}
