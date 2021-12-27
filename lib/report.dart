import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count_state.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // There are two approaches for access provider state.

    // The first is to use "Provider.of".
    //var countState = Provider.of<CountState>(context);
    //return Text('In report, count = ${countState.count}');

    // The second is to use "Consumer".
    return Consumer<CountState>(builder: (conext, data, child) {
      return Text('In report now, count = ${data.count}');
    });
  }
}
