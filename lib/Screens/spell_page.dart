import 'package:flutter/material.dart';
import 'package:koli/Widgets/custom_text_widgets.dart';

import '../Widgets/All_Spell_Pages/fifth_spell_page.dart';
import '../Widgets/All_Spell_Pages/first_spell_page.dart';
import '../Widgets/All_Spell_Pages/fourth_spell_page.dart';
import '../Widgets/All_Spell_Pages/second_spell_page.dart';
import '../Widgets/All_Spell_Pages/third_spell_page.dart';

class SpellPage extends StatelessWidget {
  SpellPage({this.initialPage = 1, Key? key}) : super(key: key);
  final int initialPage;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    List<Widget> MatchSpellList = [
      FirstSpellPage(
        pageController: _pageController,
      ),
      SecondSpellPage(
        pageController: _pageController,
      ),
      ThirdSpellPage(
        pageController: _pageController,
      ),
      FourthSpellPage(
        pageController: _pageController,
      ),
      FifthSpellPage(
        pageController: _pageController,
      )
      // pageController.nextPage(
      //                         duration: const Duration(milliseconds: 500),
      //                         curve: Curves.easeIn);
      //                   }
      //                 }),
    ];
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          // dragStartBehavior: DragStartBehavior.down,
          itemCount: MatchSpellList.length,
          itemBuilder: (BuildContext context, int index) {
            return MatchSpellList[index];
            //   print(user?[index]!.technical);
          },
        ),
      ),
    );
  }
}

class EmptyBoxes extends StatelessWidget {
  const EmptyBoxes({
    required this.letter,
    Key? key,
  }) : super(key: key);
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        ),
        verticalSpacer(height: 10),
        SizedBox(
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              letter,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EmptyBox extends StatelessWidget {
  const EmptyBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    );
  }
}

class SingleChar extends StatelessWidget {
  const SingleChar({
    required this.letter,
    Key? key,
  }) : super(key: key);
  final String letter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class FilledBox extends StatelessWidget {
  const FilledBox({
    required this.letter,
    Key? key,
  }) : super(key: key);
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: SingleChar(letter: letter),
    );
  }
}

class EmptyErrorBox extends StatelessWidget {
  const EmptyErrorBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.red, width: 1.8)),
    );
  }
}
