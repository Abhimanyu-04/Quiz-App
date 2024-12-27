import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 200)
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(129, 255, 255, 255),
          ),
          const SizedBox(height: 20),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            // onPressed: () {
            //   startQuiz();
            // },
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 15)),
            icon: const Icon(Icons.arrow_right_alt,
                color: Colors.white, size: 30),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
