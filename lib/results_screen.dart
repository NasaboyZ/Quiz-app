import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';

import 'package:flutter_quizapp/question_summery.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chossenAnswers});

  final List<String> chossenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chossenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'currect_answer': questions[i].answers[0],
        'user_answer': chossenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summaryData.where((data) {
          return data['user_answer'] == data['currect_answer'];
        }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answerd $numCorrectQuestions out of $numTotalQuestions Questions correctly',
            ),
            const SizedBox(height: 30),
            QuestionSummery(summaryData),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
