import 'package:flutter/material.dart';
import 'package:quiz_app1/start_screen.dart';
import 'package:quiz_app1/questions_screen.dart';
import 'package:quiz_app1/data/quest.dart';
import 'package:quiz_app1/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget activeScreen = StartScreen(changeScreen);
  // The above line can not be used as the changeScreen function is defined and referenced simultaneously in the code
  //Hence, the changeScreen function is shown as not defined
  //For this, we use initState function as below

  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(changeScreen);
  //   super.initState();
  // }

  //Another method to do the above change can be done by using ternary operator
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void changeScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();            (for initstate)
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(changeScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(selectedAnswer, restartQuiz);
    }

    return MaterialApp(
      title: 'quiz app',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          // child: activeScreen,      for initstate
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(changeScreen)
          //     : const QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
