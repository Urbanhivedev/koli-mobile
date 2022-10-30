import 'package:flutter/material.dart';
import 'package:koli/Widgets/All_Basic_Pages/fifth_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/first_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/fourth_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/second_basic_page.dart';
import 'package:koli/Widgets/All_Basic_Pages/third_basic_page.dart';

class BasicPage extends StatelessWidget {
  @override
  BasicPage({Key? key}) : super(key: key);

  // final PageController pageController = PageController(initialPage: initial);
  List<Widget> basicPageList = [
    FirstBasicPage(),
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
          itemCount: basicPageList.length,
          itemBuilder: (BuildContext context, int index) {
            return basicPageList[index];
            //   print(user?[index]!.technical);
          },
        ),
      ),
    );
  }
}
