import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app1/data/quest.dart';
import 'package:quiz_app1/question_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.listofAnswers, this.onRestart, {super.key});
  final List<String> listofAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummarydata() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < listofAnswers.length; i++) {
      summary.add(
        {
          'questionIndex': i,
          'question': questions[i].text,
          'correctAnswer': questions[i].answers[0],
          'userAnswer': listofAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummarydata();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['userAnswer'] == data['correctAnswer'];
      // return data['isCorrect'];                         (wrong way to do this, cant be done)
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            QuestionSummary(summaryData),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 15),
              ),
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
                size: 30,
              ),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
