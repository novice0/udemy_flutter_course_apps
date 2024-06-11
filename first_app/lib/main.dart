import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 5, 21, 142),
          Color.fromARGB(255, 95, 11, 106)
        ]),
      ),
    ),
  );
}
