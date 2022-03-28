import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

//! custom botton navigation bar
class NavigatioBarCustom extends StatelessWidget {
  final int indexpage;
  final Function(int) onPress;

  const NavigatioBarCustom(
      {Key? key, required this.indexpage, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // navigation bar from curved_navigation_bar package
    return CurvedNavigationBar(
      index: indexpage,
      color: Colors.pink,
      backgroundColor: Colors.white,
      // navigator icons
      items: [
        //websites screen icon
        Icon(Icons.language_sharp,
            size: 25, color: indexpage == 0 ? Colors.white : Colors.blue[100]),
        // colors screen icon
        Icon(Icons.color_lens_rounded,
            size: 25, color: indexpage == 1 ? Colors.white : Colors.blue[100]),

        // math screen icon
        Icon(Icons.pin_outlined,
            size: 25, color: indexpage == 3 ? Colors.white : Colors.blue[100]),
      ],
      // action,
      onTap: onPress,
    );
  }
}
