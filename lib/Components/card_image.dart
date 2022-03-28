import 'package:flutter/material.dart';

//! card image generator for custom card

Widget cardImage({required String image}) {
  return Expanded(
    flex: 1,
    child: CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(image),
    ),
  );
}
