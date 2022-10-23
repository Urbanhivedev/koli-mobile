import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/menu_page.dart';
import '../custom_text_widgets.dart';

class ThirdBasicPage extends StatelessWidget {
  const ThirdBasicPage({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 130,
                        width: 130,
                        child: Image(
                          image: AssetImage('assets/images/crocodile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      verticalSpacer(height: 70),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                      ),
                    ],
                  ),
                  // horizontalSpacer(width: 60),
                  Column(
                    children: [
                      const SizedBox(
                        height: 130,
                        width: 140,
                        child: Image(
                          image: AssetImage('assets/images/elephant.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      verticalSpacer(height: 70),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpacer(height: 80),
            const SizedBox(
              height: 120,
              width: 120,
              child: Image(
                image: AssetImage('assets/images/bone.png'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ],
    );
  }
}
