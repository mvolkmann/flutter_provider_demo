import 'package:flutter/material.dart';

extension WidgetExtension<Widget> on List<Widget> {
  /// Adds a SizedBox between all Widgets in the List.
  List<Widget> spacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: size, height: size) as Widget);
    }
    return this;
  }
}
