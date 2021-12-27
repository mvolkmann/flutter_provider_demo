import 'package:flutter/material.dart';

/*
extension WidgetExtension<Widget> on Widget {
  /// Wraps a widget in a SizedBox with a given width and height.
  SizedBox size({required double width, required double height}) {
    return SizedBox(child: this, height: height, width: width);
  }
}
*/

extension WidgetListExtension<Widget> on List<Widget> {
  /// Adds a SizedBox with a given width and no height
  /// between all Widgets in the List.
  List<Widget> hSpacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: size, height: 0) as Widget);
    }
    return this;
  }

  /// Adds a SizedBox with the same width and height
  /// between all Widgets in the List.
  List<Widget> spacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: size, height: size) as Widget);
    }
    return this;
  }

  /// Adds a SizedBox with a given height and no width
  /// between all Widgets in the List.
  List<Widget> vSpacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: 0, height: size) as Widget);
    }
    return this;
  }
}
