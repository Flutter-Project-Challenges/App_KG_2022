import 'package:flutter/material.dart';
import '../Models/cutom_colors.dart';

//! list of each color button data for colors screen
class ColorData {
  final List<CustomColor> _colors = [
    CustomColor(
      bColorImage: "assets/Images/pink.png",
      bColorTitle: "pink",
      bColorVoice: "Audios/pink.mp3",
      bColor: Colors.pink,
    ),
    CustomColor(
      bColorImage: "assets/Images/black2.png",
      bColorTitle: "black",
      bColorVoice: "Audios/black.mp3",
      bColor: Colors.black,
    ),
    CustomColor(
      bColorImage: "assets/Images/blue1.png",
      bColorTitle: "blue",
      bColorVoice: "Audios/blue.mp3",
      bColor: Colors.blue,
    ),
    CustomColor(
      bColorImage: "assets/Images/tent2.png",
      bColorTitle: "green",
      bColorVoice: "Audios/green.mp3",
      bColor: Colors.green,
    ),
    CustomColor(
      bColorImage: "assets/Images/red.png",
      bColorTitle: "red",
      bColorVoice: "Audios/red.mp3",
      bColor: Colors.red,
    ),
    CustomColor(
      bColorImage: "assets/Images/white.png",
      bColorTitle: "white",
      bColorVoice: "Audios/white.mp3",
      bColor: Colors.white,
      titleColor: Colors.black,
    ),
    CustomColor(
      bColorImage: "assets/Images/purple.png",
      bColorTitle: "purple",
      bColorVoice: "Audios/purple.mp3",
      bColor: Colors.purple,
    ),
    CustomColor(
      bColorImage: "assets/Images/brown.png",
      bColorTitle: "brown",
      bColorVoice: "Audios/brown.mp3",
      bColor: Colors.brown,
    ),
    CustomColor(
      bColorImage: "assets/Images/grey.png",
      bColorTitle: "grey",
      bColorVoice: "Audios/grey.mp3",
      bColor: Colors.grey,
    ),
    CustomColor(
      bColorImage: "assets/Images/orange.png",
      bColorTitle: "orange",
      bColorVoice: "Audios/orange.mp3",
      bColor: Colors.orange,
    ),
    CustomColor(
      bColorImage: "assets/Images/yellow1.png",
      bColorTitle: "yellow",
      bColorVoice: "Audios/yellow.mp3",
      bColor: Colors.yellow,
    ),
  ];
  List<CustomColor> get colorsData => _colors;
  int get countColors => _colors.length;
}
