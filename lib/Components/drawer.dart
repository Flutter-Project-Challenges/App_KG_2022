import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! app drawer
Widget drawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // drawer image
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Image.asset(
            'assets/Images/kids.png',
            fit: BoxFit.contain,
          ),
        ),
        const Divider(color: Colors.yellow, thickness: 8),
        //app name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Center(
              child: Text('kg App',
                  style: GoogleFonts.adamina(
                      fontSize: 25,
                      color: Colors.orange,
                      shadows: [
                        const Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            color: Colors.yellow)
                      ])),
            ),
          ),
        ),
        ListTile(
          // description of the app
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'kg is an app enable kids between from one to five years to learn with fun the basic concepts for thier age .',
                style: GoogleFonts.adamina(fontSize: 16, height: 1.3),
              ),
              text(text: '1. learn colors .'),
              text(text: '2. alphabets .'),
              text(
                  text:
                      '3. adding and subtraction operations on small numbers.'),
              text(
                  text:
                      'Also,it provides a list of websites that give a nice content to learn.'),
            ],
          ),
        )
      ],
    ),
  );
}

Widget text({required String text}) {
  return Text(
    text,
    style: GoogleFonts.adamina(fontSize: 15, height: 2),
  );
}
