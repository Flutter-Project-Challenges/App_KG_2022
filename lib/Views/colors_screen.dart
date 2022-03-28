import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Components/custom_color_button.dart';
import '../Components/custom_color_image.dart';
import '../Components/hint_text.dart';
import '../Controllers/colors_list.dart';
import '../Models/cutom_colors.dart';

//! Colors screen

class ColorLearn extends StatefulWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  _ColorLearnState createState() => _ColorLearnState();
}

class _ColorLearnState extends State<ColorLearn> {
  String _image = "assets/Images/Colours.png";
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  final ColorData _colorData = ColorData();
  List<CustomColor> _data = [];

  //! refresh the screen to dispaly picture of color selected and play its name sound
  void buttonAction(int index) async {
    // control audio
    audioCache.clearAll();
    audioPlayer.stop();
    audioPlayer = await audioCache.play(_data[index].bColorVoice);
    // change image path and rebuild the widget
    setState(() {
      _image = _data[index].bColorImage;
    });
  }

  @override
  void initState() {
    super.initState();
    _data = _colorData.colorsData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          // * hint
          hintText(hint: "Click on color name then listen and watch :"),
          // _image container
          customImage(image: _image),
          Expanded(
            flex: 2,
            //! generate colors buttons in grid view
            child: GridView.builder(
              itemCount: _colorData.countColors,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (buildContext, index) {
                return CustomColorButton(
                  color: _data[index].bColor,
                  title: _data[index].bColorTitle,
                  cImage: _data[index].bColorImage,
                  cVoice: _data[index].bColorVoice,
                  titleColor: _data[index].titleColor,
                  onClick: () {
                    buttonAction(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
