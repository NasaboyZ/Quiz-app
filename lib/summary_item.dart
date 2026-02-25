import 'package:flutter/material.dart';
import 'package:flutter_quizapp/question_indentifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    // FIX: Der Key muss 'currect_answer' sein, passend zu results_screen.dart
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['currect_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Besserer Kontrast
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Your answer: ${itemData['user_answer']}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 249, 133, 241), // Pink für User
                  ),
                ),
                Text(
                  'Correct answer: ${itemData['currect_answer']}',
                  style: const TextStyle(
                    color: Color.fromARGB(
                      255,
                      150,
                      198,
                      241,
                    ), // Blau für Korrekt
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
