import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: startQuiz,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 83, 4, 147),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(20),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text('Start Quiz'),
    );
  }
}
