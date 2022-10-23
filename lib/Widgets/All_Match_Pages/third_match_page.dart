import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/match_page.dart';
import '../../Screens/menu_page.dart';
import '../custom_text_widgets.dart';

class ThirdMatchPage extends StatelessWidget {
  const ThirdMatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MenuPage();
                },
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 20),
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MatchesWidget(
              name: 'Goat',
              imageUrl: 'assets/images/goat.png',
            ),
            verticalSpacer(height: 25),
            MatchesWidget(
              name: 'Sheep',
              imageUrl: 'assets/images/sheep.png',
            ),
            verticalSpacer(height: 25),
            MatchesWidget(
              name: 'Dog',
              imageUrl: 'assets/images/dog.png',
            ),
            verticalSpacer(height: 25),
            MatchesWidget(
              name: 'Turtle',
              imageUrl: 'assets/images/turtle.png',
            ),
          ],
        ),
      ],
    );
  }
}
