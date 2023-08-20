import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          currentQuestion.text,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 30),
        AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
        AnswerButton(answerText: "Answer 2", onTap: () {}),
        AnswerButton(answerText: "Answer 3", onTap: () {}),
        AnswerButton(answerText: "Answer 4", onTap: () {}),
      ]),
    );
  }
}
