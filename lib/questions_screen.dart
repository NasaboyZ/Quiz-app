import 'package:flutter/material.dart';
import 'package:flutter_quizapp/anwser_button.dart';
import 'package:flutter_quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestions.text, style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnwserButton(answerText: currentQuestions.answers[0], onTap: () {}),
          const SizedBox(height: 10),
          AnwserButton(answerText: currentQuestions.answers[1], onTap: () {}),
          const SizedBox(height: 10),
          AnwserButton(answerText: currentQuestions.answers[2], onTap: () {}),
          const SizedBox(height: 10),
          AnwserButton(answerText: currentQuestions.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
