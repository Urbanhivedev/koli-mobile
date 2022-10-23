import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/match_page.dart';
import '../../Screens/menu_page.dart';
import '../custom_text_widgets.dart';

class SecondMatchPage extends StatelessWidget {
  const SecondMatchPage({Key? key}) : super(key: key);

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
              name: 'Crocodile',
              imageUrl: 'assets/images/crocodile.png',
            ),
            verticalSpacer(height: 25),
            MatchesWidget(
              name: 'Elephant',
              imageUrl: 'assets/images/elephant.png',
            ),
            verticalSpacer(height: 25),
            MatchesWidget(
              name: 'Hen',
              imageUrl: 'assets/images/Hen.png',
            ),
            verticalSpacer(height: 25),
            MatchesWidget(
              name: 'Pig',
              imageUrl: 'assets/images/pig.png',
            ),
          ],
        ),
      ],
    );
  }
}
