import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,  // Align everything to the start
      children: summaryData.map((data) {
        bool isAnswerCorrect = data['user_answer'] == data['correct_answer'];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),  // Add vertical spacing between each question
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,  // Align question and answers to the top
            children: [
              // Question Index inside a Blue Circle
              Container(
                width: 40,  // Circle width
                height: 40,  // Circle height
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 41, 130, 227),  // Blue color for circle
                ),
                alignment: Alignment.center,  // Center the number inside the circle
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,  // White text color for the number
                  ),
                ),
              ),
              SizedBox(width: 15),  // Space between circle and text
              // Question and Answers
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
                  children: [
                    // Question Text
                    Text(
                      data['question'] as String,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 41, 130, 227),
                      ),
                    ),
                    SizedBox(height: 8),
                    // User's Answer
                    Text(
                      "Your Answer: ${data['user_answer']}",
                      style: TextStyle(
                        fontSize: 14,
                        color: isAnswerCorrect
                            ? Color.fromARGB(255, 41, 130, 227) // Correct answer: Blue
                            : Colors.red, // Incorrect answer: Red
                      ),
                    ),
                    // Correct Answer
                    Text(
                      "Correct Answer: ${data['correct_answer']}",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 41, 130, 227),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
