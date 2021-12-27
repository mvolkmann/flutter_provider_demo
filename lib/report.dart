import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count_state.dart';
import 'elevated_text_button.dart';
import 'profile_state.dart';
import 'widget_extensions.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // There are two approaches for access provider state.

    // The first is to use "Provider.of".
    var countState = Provider.of<CountState>(context);
    var profileState = Provider.of<ProfileState>(context);

    return Column(
      children: [
        Row(
          children: <Widget>[
            Text('${countState.count}'),
            Text(countState.winner ? 'You win!' : 'keep playing'),
            ElevatedTextButton(
              onPressed: () {
                countState.reset();
              },
              text: 'Reset',
            ),
          ].hSpacing(10),
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Text('Hello, ${profileState.firstName}, ${profileState.lastName}')
      ],
    );

    // The second is to use "Consumer".
    /*
    return Consumer<CountState>(builder: (context, data, child) {
      return Row(children: [
        Text('Report: ${data.count}'),
        ElevatedButton(
            child: Text('Reset'),
            onPressed: () {
              data.reset();
            }),
      ].hSpacing(10),
      mainAxisAlignment: MainAxisAlignment.center,
      );
    });
    */
  }
}
