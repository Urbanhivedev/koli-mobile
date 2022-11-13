import 'package:flutter/material.dart';

import '../Widgets/All_Match_Pages/fifth_match_page.dart';
import '../Widgets/All_Match_Pages/first_match_page.dart';
import '../Widgets/All_Match_Pages/fourth_match_page.dart';
import '../Widgets/All_Match_Pages/second_match_page.dart';
import '../Widgets/All_Match_Pages/third_match_page.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> matchPageList = [
      const FirstMatchPage(),
      const SecondMatchPage(),
      const ThirdMatchPage(),
      const FourthMatchPage(),
      const FifthMatchPage()
    ];
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          // dragStartBehavior: DragStartBehavior.down,
          itemCount: matchPageList.length,
          itemBuilder: (BuildContext context, int index) {
            return matchPageList[index];
            //   print(user?[index]!.technical);
          },
        ),
      ),
    );
  }
}

class MatchesWidget extends StatelessWidget {
  const MatchesWidget({
    required this.name,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 130,
              width: 130,
              child: Image(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 44,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
