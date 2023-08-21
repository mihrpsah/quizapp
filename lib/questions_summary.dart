import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(children: [
              Text(((data['question_index'] as int) + 1).toString()),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 201, 153, 251),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 152, 130, 177),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 46, 209, 46),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
