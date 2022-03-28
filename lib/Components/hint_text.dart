import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

//!create hint text for alphabets screen ,colors screen and math screen
Widget hintText({required String hint}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 5),
    child: Text(
      hint,
      textAlign: TextAlign.center,
      style: GoogleFonts.actor(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
