import 'package:app_2/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Flutter apps are compiled to native code for each target platform (iOS, Android) resulting in:',
    [
      'Faster performance + smoother user experience',
      'Slower development cycles due to separate codebases',
      'Limited functionality compared to web apps',
      'Difficulty in maintaining a single codebase',
    ],
  ),
  QuizQuestion(
    'In Flutter, which navigates between screens?',
    [
      'Navigator',
      'Router',
      'Layout',
      'Widget',
    ],
  ),
  QuizQuestion(
    'How do you display text on the screen in Flutter?',
    ['Text widget', 'print() function', 'String variable', 'Label element'],
  ),
  QuizQuestion(
    'What is the hot reload feature known for in Flutter development?',
    [
      'Faster app launch',
      'Real-time UI updates during code changes',
      'Improved code debugging',
      ' Automatic error correction',
    ],
  ),
];
