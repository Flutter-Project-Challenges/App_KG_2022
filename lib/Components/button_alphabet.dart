import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! generate custom button for alphabets-page
class CustomAlphaButton extends StatelessWidget {
  //data variable of button
  final String title;
  final int index;
  final Function onClick;

  //constructor
  const CustomAlphaButton({
    Key? key,
    required this.title,
    required this.index,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      //button
      child: ElevatedButton(
        child: Text(
          title,
          style: GoogleFonts.boogaloo(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          primary: index % 2 == 0 ? Colors.red : Colors.green,
        ),
        //action
        onPressed: () => {onClick()},
      ),
    );
  }
}
