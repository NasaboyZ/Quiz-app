import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';

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
        'user_anser': chossenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answerd X out of Y Questions correctly'),
            const SizedBox(height: 30),
            const Text('list of Answers and Questions'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
