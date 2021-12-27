import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_state.dart';
import 'widget_extensions.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  void clear(ProfileState profileState) {
    profileState.clear();
  }

  @override
  Widget build(BuildContext context) {
    var profileState = Provider.of<ProfileState>(context);

    return Form(
      child: Column(
        children: <Widget>[
          //TODO: How can these TextFields be given their initial value from profileState?
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'First Name',
            ),
            //initialValue: profileState.firstName,
            onChanged: (String value) {
              profileState.firstName = value;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Last Name',
            ),
            //initialValue: profileState.firstName,
            onChanged: (String value) {
              profileState.lastName = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              clear(profileState);
            },
            child: Text('Clear'),
          ),
        ].vSpacing(20),
      ).pad(20),
    );
  }
}
