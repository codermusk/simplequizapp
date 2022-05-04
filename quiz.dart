import 'package:flutter/cupertino.dart';
import 'package:quizapp/answers.dart';
import 'package:quizapp/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final VoidCallback answerquestion;
  Quiz(
      {required this.questions,
      required this.answerquestion,
      required this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]['questionText'] as String,
        ),
        ...(questions[questionindex]['answers'] as List<String>).map((answer) {
          return Answers(answerquestion, answer);
        }).toList()
      ],
    );
  }
}
