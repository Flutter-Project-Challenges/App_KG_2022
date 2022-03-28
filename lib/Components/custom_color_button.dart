import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! generate Custom color button for colors screen
class CustomColorButton extends StatelessWidget {
  // button variables
  final String title;
  final Color color;
  final String cImage;
  final String cVoice;
  final Color titleColor;
  final Function onClick;

  //button constructor
  const CustomColorButton({
    Key? key,
    required this.title,
    required this.color,
    required this.cImage,
    required this.cVoice,
    this.titleColor = Colors.white,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      //button
      child: ElevatedButton(
        child: Text(
          title,
          style: GoogleFonts.actor(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          primary: color,
          onPrimary: titleColor,
        ),
        //action
        //! performs action (reperform build function in colors screen) when press on button
        onPressed: () => {onClick()},
      ),
    );
  }
}
