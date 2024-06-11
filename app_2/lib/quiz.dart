import 'package:app_2/data/questions.dart';
import 'package:app_2/questions_screen.dart';
import 'package:flutter/material.dart';
import 'content.dart';
import 'package:app_2/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  //underscore states that it is a private class
  // Widget? activeScreen;  can store widgets in variables
  var activeScreen = 'content';

  // @override
  // void initState() {
  //   activeScreen = Content(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        //selectedAnswers = []; //remove this for now
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = Content(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 136, 4, 159),
                Color.fromARGB(255, 83, 4, 147)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(child: screenWidget
              //     activeScreen == 'content'
              //     ? Content(switchScreen)
              //     : const QuestionsScreen(),
              //     different approach to reder content conditionally using ternary operators
              ),
        ),
      ),
    );
  }
}
