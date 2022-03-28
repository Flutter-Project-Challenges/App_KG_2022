import 'package:flutter/material.dart';

//! feilds for color button data in colors screen

class CustomColor {
  final String bColorTitle;
  final String bColorImage;
  Color bColor;
  final String bColorVoice;
  final Color titleColor;

  CustomColor({
    required this.bColorTitle,
    required this.bColorImage,
    this.bColor = Colors.grey,
    required this.bColorVoice,
    this.titleColor = Colors.white,
  });
}
