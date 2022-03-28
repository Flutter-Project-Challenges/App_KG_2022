import '../Models/custom_alphabet.dart';

//! list of alphabets and its related images for alphabets screen
class ImagesList {
  final List<CustomAlphabet> _imgUrl = [
    CustomAlphabet(image: 'assets/Images/abc/apple.png', title: "A"),
    CustomAlphabet(image: 'assets/Images/abc/banana.png', title: "B"),
    CustomAlphabet(image: 'assets/Images/abc/cake.png', title: "C"),
    CustomAlphabet(image: 'assets/Images/abc/dog.png', title: "D"),
    CustomAlphabet(image: 'assets/Images/abc/egg.png', title: "E"),
    CustomAlphabet(image: 'assets/Images/abc/flower.png', title: "F"),
    CustomAlphabet(image: 'assets/Images/abc/grape.png', title: "G"),
    CustomAlphabet(image: 'assets/Images/abc/hat.png', title: "H"),
    CustomAlphabet(image: 'assets/Images/abc/iceCream.png', title: "I"),
    CustomAlphabet(image: 'assets/Images/abc/juice.png', title: "J"),
    CustomAlphabet(image: 'assets/Images/abc/kite.png', title: "K"),
    CustomAlphabet(image: 'assets/Images/abc/lemon.png', title: "L"),
    CustomAlphabet(image: 'assets/Images/abc/monkey.png', title: "M"),
    CustomAlphabet(image: 'assets/Images/abc/neckless.png', title: "N"),
    CustomAlphabet(image: 'assets/Images/abc/orange.png', title: "O"),
    CustomAlphabet(image: 'assets/Images/abc/pincel.png', title: "P"),
    CustomAlphabet(image: 'assets/Images/abc/queen.png', title: "Q"),
    CustomAlphabet(image: 'assets/Images/abc/robot.png', title: "R"),
    CustomAlphabet(image: 'assets/Images/abc/snowman.png', title: "S"),
    CustomAlphabet(image: 'assets/Images/abc/tree.png', title: "T"),
    CustomAlphabet(image: 'assets/Images/abc/umbrella.png', title: "U"),
    CustomAlphabet(image: 'assets/Images/abc/volcano.png', title: "V"),
    CustomAlphabet(image: 'assets/Images/abc/watermelon.png', title: "W"),
    CustomAlphabet(image: 'assets/Images/abc/xylophone.jpg', title: "X"),
    CustomAlphabet(image: 'assets/Images/abc/yoyo.png', title: "Y"),
    CustomAlphabet(image: 'assets/Images/abc/zebra.png', title: "Z"),
  ];
  List<CustomAlphabet> get imagesURL => _imgUrl;
  int get countImages => _imgUrl.length;
}
