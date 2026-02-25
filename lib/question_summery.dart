import 'package:flutter/material.dart';
import 'package:flutter_quizapp/summary_item.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, // Etwas mehr Platz für die Liste
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return SummaryItem(data); // Nutzt das optimierte SummaryItem
              }).toList(),
        ),
      ),
    );
  }
}
