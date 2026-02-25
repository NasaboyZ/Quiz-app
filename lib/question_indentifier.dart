import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final quetionNumber = questionIndex + 1;
    return Container(
      width: 35, // Etwas größer
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isCorrectAnswer
                ? const Color.fromARGB(255, 150, 198, 241) // Blau für korrekt
                : const Color.fromARGB(255, 249, 133, 241), // Pink für falsch
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        quetionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 32, 35, 33),
        ),
      ),
    );
  }
}
