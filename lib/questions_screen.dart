import 'package:flutter/material.dart';
import 'package:quiz_app1/answer_button.dart';
import 'package:quiz_app1/data/quest.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.answerFunction, {super.key});
  final void Function(String answer) answerFunction;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;

  void answerQuestion(String answer) {
    widget.answerFunction(answer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch,   // stretch the children
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((ans) {
              return AnswerButton(
                  answer: ans,
                  onTap: () {
                    answerQuestion(ans);
                  });
            })
          ],
        ),
      ),
    );
  }
}
