import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app1/question_summary/question_number.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryData, {super.key});

  final Map<String, Object> summaryData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        summaryData['userAnswer'] == summaryData['correctAnswer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber((summaryData['questionIndex'] as int), isCorrectAnswer),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(summaryData['question'].toString(),
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(
                summaryData['userAnswer'].toString(),
                style: GoogleFonts.lato(color: Colors.pink, fontSize: 16),
              ),
              Text(
                summaryData['correctAnswer'].toString(),
                style: GoogleFonts.lato(color: Colors.lightBlue, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
