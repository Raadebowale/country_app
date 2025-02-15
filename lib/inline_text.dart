import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InlineText extends StatelessWidget {
  const InlineText({
    super.key,
    required this.title,
    required this.countryInfo,
  });

  final String title;
  final String countryInfo;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title: ',
        children: [
          TextSpan(
            text: countryInfo,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.bodyMedium?.color,
        ),
      ),
    );
  }
}
