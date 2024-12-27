import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber (this.questionIndex, this.isCorrect, {super.key});
  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(context) {
    final questionNumber=questionIndex+1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
        ? Colors.lightBlue
        : Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child:Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}