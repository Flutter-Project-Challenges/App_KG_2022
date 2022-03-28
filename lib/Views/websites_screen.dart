import 'package:flutter/material.dart';

import '../Components/custom_card.dart';
import '../Controllers/websites_list.dart';
import '../Models/custom_card.dart';

class WebsitesScreen extends StatelessWidget {
  static final ControlWebsitesScreen _controlWebsitesScreen =
      ControlWebsitesScreen();

  const WebsitesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _controlWebsitesScreen.dataLength,
        itemBuilder: (context, index) {
          List<ListCard> _data = _controlWebsitesScreen.dataNews;
          ListCard snapshot = _data[index];
          return CustomColorCard(
            webTitle: snapshot.title,
            image: snapshot.image,
            pageurl: snapshot.url,
          );
        },
      ),
    );
  }
}
