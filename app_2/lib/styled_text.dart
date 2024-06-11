import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return Text(
      'Learn Flutter the Fun way!',
      style: GoogleFonts.lato(
        color: const Color.fromARGB(220, 255, 255, 255),
        fontSize: 22,
      ),
    );
  }
}
