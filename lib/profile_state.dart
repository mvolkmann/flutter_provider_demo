import 'package:flutter/foundation.dart'; // defines ChangeNotifier

class ProfileState extends ChangeNotifier {
  var _firstName = '';
  var _lastName = '';

  String get firstName => _firstName;

  String get lastName => _lastName;

  set firstName(String s) {
    _firstName = s;
    notifyListeners();
  }

  set lastName(String s) {
    _lastName = s;
    notifyListeners();
  }
}
