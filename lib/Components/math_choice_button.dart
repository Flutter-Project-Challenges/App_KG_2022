import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! choice button generator for math screen
class MathChoiceButton extends StatelessWidget {
  //button feilds
  final String title;
  final Function onClick;
  final Color primary;

  //constructor
  const MathChoiceButton({
    Key? key,
    required this.title,
    required this.onClick,
    required this.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //button
        child: ElevatedButton(
          child: Text(
            title,
            style: GoogleFonts.aldrich(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            primary: primary,
            elevation: 10,
          ),
          //action
          onPressed: onClick(),
        ),
      ),
    );
  }
}
