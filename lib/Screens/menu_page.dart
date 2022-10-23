import 'package:flutter/material.dart';
import 'package:koli/Screens/spell_page.dart';
import 'package:koli/Widgets/custom_text_widgets.dart';

import '../Widgets/menu_page_widgets.dart';
import 'basic_page.dart';
import 'match_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BasicPage();
                      },
                    ),
                  );
                },
                child: const MenusWidget(
                  title: 'BASIC',
                ),
              ),
              verticalSpacer(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MatchPage();
                      },
                    ),
                  );
                },
                child: const MenusWidget(
                  title: 'MATCH',
                ),
              ),
              verticalSpacer(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SpellPage();
                      },
                    ),
                  );
                },
                child: const MenusWidget(
                  title: 'SPELL',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
