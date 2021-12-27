import 'package:flutter/foundation.dart';

class CountState extends ChangeNotifier {
  var _count = 0;

  int get count => _count;

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
