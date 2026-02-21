import 'package:flutter/material.dart';
import 'package:flutter_quizapp/anwser_button.dart';
import 'package:flutter_quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;
  answerQuestion() {
    setState(() {
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 15,
          children: [
            Text(
              currentQuestions.text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            ...currentQuestions.getShuffeldAnswers().map(
              (answer) =>
                  AnwserButton(answerText: answer, onTap: answerQuestion),
            ),
          ],
        ),
      ),
    );
  }
}
