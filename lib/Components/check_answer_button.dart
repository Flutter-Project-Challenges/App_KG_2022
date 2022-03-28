
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! check answer button for math screen
class CheckButton extends StatelessWidget {
  final Function onClick;

  const CheckButton({Key? key, required this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      //button
      child: ElevatedButton(
        child: Text(
          "check",
          style: GoogleFonts.aldrich(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          primary: Colors.green,
        ),
        //action
        onPressed: onClick(),
      ),
    );
  }
}
