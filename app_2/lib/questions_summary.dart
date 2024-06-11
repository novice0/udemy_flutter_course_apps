import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    Color toCheck(data) {
      return data['user_answer'] == data['correct_answer']
          ? const Color.fromARGB(255, 72, 126, 241)
          : const Color.fromARGB(255, 252, 52, 222);
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: toCheck(data),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.alata(fontSize: 17, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (Text(
                        data['question'] as String,
                        style: GoogleFonts.alata(
                            color: Colors.white, fontSize: 17),
                      )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.alata(
                            color: const Color.fromARGB(255, 252, 52, 222),
                            fontSize: 15),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.alata(
                            color: const Color.fromARGB(255, 72, 126, 241),
                            fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
