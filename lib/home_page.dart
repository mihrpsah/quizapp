import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});
  final void Function() startQuiz;

  void quizStartPressed() {
    startQuiz();
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(150, 250, 250, 250),
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text('Learn flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: quizStartPressed,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
              padding: const EdgeInsets.all(5)),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        )
      ]),
    );
  }
}
