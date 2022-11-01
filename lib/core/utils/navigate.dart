import 'package:flutter/material.dart';

class Navigate {
  static to(Widget screen, context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
