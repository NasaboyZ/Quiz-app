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
          ...currentQuestions.answers.map((answer) =>AnwserButton(answerText: answer, onTap: (){},))
  
        ],
      ),
    );
  }
}
