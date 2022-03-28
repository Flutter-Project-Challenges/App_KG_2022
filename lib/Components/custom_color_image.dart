import 'package:flutter/material.dart';

//!image container for colors screen
Widget customImage({required String image}) {
  return Expanded(
    flex: 1,
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
