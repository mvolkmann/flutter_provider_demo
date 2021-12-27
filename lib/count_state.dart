import 'package:flutter/foundation.dart'; // defines ChangeNotifier

class CountState extends ChangeNotifier {
  // Can declare any number of state variables here.
  var _count = 0;

  int get count => _count;

  bool get winner => _count >= 10;

  void decrement() {
    _count--;
    notifyListeners();
  }

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
