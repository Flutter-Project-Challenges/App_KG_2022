import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! custom app bar
AppBar appbarCustom({String title = "Fun Learn"}) {
  return AppBar(
    actions: [
      //app icon
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: Image.asset("assets/Images/ic_launcher.png"),
        ),
      )
    ],
    // app title
    backgroundColor: Colors.blue,
    title: Text(
      title,
      style: GoogleFonts.aBeeZee(
        color: Colors.pink,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        shadows: [
          const Shadow(
            offset: Offset(1.5, 1.5),
            color: Colors.white,
            blurRadius: 3,
          )
        ],
      ),
    ),
    centerTitle: true,
  );
}
