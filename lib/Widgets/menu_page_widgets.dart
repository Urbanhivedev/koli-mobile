import 'package:flutter/material.dart';

import 'custom_text_widgets.dart';

class MenusWidget extends StatelessWidget {
  const MenusWidget({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: customText(
            title: title,
            size: 30,
            fontWeight: FontWeight.normal,
            color: Colors.black),
      ),
    );
  }
}
