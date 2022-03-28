import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! card title generator for custom card

Widget cardTitle({required String webTitle}) {
  return Expanded(
    flex: 2,
    child: Container(
      padding: const EdgeInsets.only(right: 10),
      margin: const EdgeInsets.only(left: 6),
      child: Text(
        "$webTitle .",
        style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold, fontSize: 15, height: 1.5),
      ),
    ),
  );
}
