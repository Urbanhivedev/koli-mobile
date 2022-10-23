import 'package:flutter/material.dart';
import 'package:koli/Widgets/All_Basic_Pages/fifth_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/first_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/fourth_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/second_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/third_basic_page.dart';

class BasicPage extends StatelessWidget {
  BasicPage({Key? key}) : super(key: key);

  @override
  // final PageController pageController = PageController(initialPage: initial);
  List<Widget> BasicPageList = [
    const FirstBasicPage(),
    const SecondBasicPage(),
    const ThirdBasicPage(),
    const FourthBasicPage(),
    const FifthBasicPage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          // dragStartBehavior: DragStartBehavior.down,
          itemCount: BasicPageList.length,
          itemBuilder: (BuildContext context, int index) {
            return BasicPageList[index];
            //   print(user?[index]!.technical);
          },
        ),
      ),
    );
  }
}
