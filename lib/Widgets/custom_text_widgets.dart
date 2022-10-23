import 'package:flutter/material.dart';

Widget customText(
    {required String title,
    required double size,
    required Color color,
    required FontWeight fontWeight}) {
  return Text(
    title,
    style: TextStyle(fontWeight: fontWeight, fontSize: size, color: color),
  );
}

Widget verticalSpacer({required double height}) {
  return SizedBox(
    height: height,
  );
}

Widget horizontalSpacer({required double width}) {
  return SizedBox(
    width: width,
  );
}
