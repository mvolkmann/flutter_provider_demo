import 'package:flutter/material.dart';

class ElevatedTextButton extends ElevatedButton {
  ElevatedTextButton({
    Key? key,
    required VoidCallback onPressed,
    required String text,
  }) : super(
          key: key,
          child: Text(text),
          onPressed: onPressed,
        );
}
