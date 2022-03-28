import 'package:flutter/material.dart';
import '../Components/appbar_custom.dart';
import '../Components/drawer.dart';
import '../Components/navigator_custom.dart';
import 'colors_screen.dart';
import 'websites_screen.dart';
import 'math_page.dart';

//!!!!!!!!!!!!!!!!!!!!   luncher of the app !!!!!!!!!!!!!!!!!!!

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key}) : super(key: key);

  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  //!list of screens
  List<Widget> screens = const [
    WebsitesScreen(),
    ColorLearn(),
    MathPage(),
  ];

  int screen = 0;
  String screenTitle = "";

  @override
  Widget build(BuildContext context) {
    pageTitle();
    return Scaffold(
      drawer: drawer(),
      appBar: appbarCustom(title: screenTitle),
      body: screens[screen],
      bottomNavigationBar: NavigatioBarCustom(
        indexpage: screen,
        onPress: (value) {
          setState(() {
            screen = value;
          });
        },
      ),
    );
  }

  //! determin screenTitlefor each screen
  void pageTitle() {
    switch (screen) {
      case 0:
        screenTitle = "Websites list";
        break;
      case 1:
        screenTitle = "Colors";
        break;
      case 2:
        screenTitle = "Alphabets";
        break;
      case 3:
        screenTitle = "Numbers";
        break;
      default:
        screenTitle = "Fun Learn";
    }
  }
}
