import 'package:flutter/material.dart';
import '../Components/change_image_button.dart';
import '../Components/hint_text.dart';
import '../Controllers/images_list.dart';
import '../Components/button_alphabet.dart';
import '../Models/custom_alphabet.dart';
import 'package:audioplayers/audioplayers.dart';

import 'dart:math';

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({Key? key}) : super(key: key);
  @override
  _AlphabetPageState createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  //! variables
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  String _image = "assets/Images/abc2.jpg";
  String _startButton = 'Click to Start';
  final List<CustomAlphabet> _imlist = ImagesList().imagesURL;
  //!random number generator
  var _r = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              //! change image button
              changeImageButton(
                  startButton: _startButton, changePic: () => changePic()),
              //! image
              SizedBox(height: 210, child: Image.asset(_image)),
              const Divider(thickness: 5),

              //! hint text
              hintText(hint: 'Click on the sutable alphabet for the picture:'),
              //! generate 26 button of english alphabites
              Expanded(
                child: GridView.builder(
                  itemCount: ImagesList().countImages,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7),
                  itemBuilder: (buildContext, index) {
                    return CustomAlphaButton(
                      title: _imlist[index].title,
                      index: index,
                      onClick: () => buttonAction(index),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//! change the picture in image
  void changePic() {
    _r = List.generate(
        1, (index) => Random().nextInt((ImagesList().countImages)));
    if (_startButton != "Next Picture") {
      _startButton = "Next picture";
    }
    setState(() {
      _image = _imlist[_r[0]].image;
    });
  }

//! check if the answer clicked is true or flse
  void buttonAction(int bIndex) async {
    audioCache.clearAll();
    audioPlayer.stop();

    if (bIndex == _r[0]) {
      audioPlayer = await audioCache.play("Audios/cheering.mp3");
    } else {
      audioPlayer = await audioCache.play("Audios/try.mp3");
    }
  }
}
