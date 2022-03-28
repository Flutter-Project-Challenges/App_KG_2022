import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! Click to start button for alphabets page
Widget changeImageButton(
    {required String startButton, required Function changePic}) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    width: double.infinity,
    // button
    child: ElevatedButton(
      child: Text(
        startButton,
        style: GoogleFonts.boogaloo(fontSize: 30),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
      ),
      onPressed: () => {changePic()},
    ),
  );
}
