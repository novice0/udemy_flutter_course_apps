import 'package:app_2/start_button.dart';
import 'package:app_2/styled_text.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 250,
        //   ),
        // ),
        const SizedBox(
          height: 100,
        ),
        const StyledText(),
        const SizedBox(
          height: 20,
        ),
        StartButton(startQuiz),
      ],
    );
  }
}
