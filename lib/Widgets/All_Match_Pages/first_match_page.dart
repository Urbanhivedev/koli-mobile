import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/match_page.dart';
import '../../Screens/menu_page.dart';
import '../custom_text_widgets.dart';

class FirstMatchPage extends StatelessWidget {
  const FirstMatchPage({Key? key}) : super(key: key);

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
            const MatchesWidget(
              name: 'Monkey',
              imageUrl: 'assets/images/monkey.png',
            ),
            verticalSpacer(height: 25),
            const MatchesWidget(
              name: 'Dog',
              imageUrl: 'assets/images/dog.png',
            ),
            verticalSpacer(height: 25),
            const MatchesWidget(
              name: 'Turtle',
              imageUrl: 'assets/images/turtle.png',
            ),
            verticalSpacer(height: 25),
            const MatchesWidget(
              name: 'Mouse',
              imageUrl: 'assets/images/Rat.png',
            ),
          ],
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Stack(
//             children: <Widget>[
//               const IgnorePointer(
//                 ignoring: true,
//                 child: FirstMatchPage(),
//               ),
//               const Lines(),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class FirstMatchPage extends StatelessWidget {
//   const FirstMatchPage({Key? key}) : super(key: key);
//   @override
//   build(_) => GridView.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 25,
//         crossAxisSpacing: 25,
//         padding: const EdgeInsets.all(25),
//         children: <Widget>[
//           for (int i = 0; i < 6; i++)
//             Container(
//               color: const Color(0xffe4f2fd),
//               foregroundDecoration: BoxDecoration(
//                   border: Border.all(
//                 color: const Color(0xffc2d2e1),
//                 width: 2,
//               )),
//               child: const Center(
//                 child: Text('MyBox'),
//               ),
//             )
//         ],
//       );
// }

// class Lines extends StatefulWidget {
//   const Lines({Key? key}) : super(key: key);

//   @override
//   createState() => _LinesState();
// }

// class _LinesState extends State<Lines> {
//   late Offset start;
//   late Offset end;

//   @override
//   void initState() {
//     super.initState();
//     start = Offset(1, 2);
//     end = Offset(2, 1);
//   }

//   @override
//   build(_) => GestureDetector(
//         onTap: () => print('t'),
//         onPanStart: (details) {
//           setState(() {
//             start = details.localPosition;
//             end;
//           });
//         },
//         onPanUpdate: (details) {
//           print(details.delta);

//           setState(() {
//             end = details.localPosition;
//           });
//         },
//         child: CustomPaint(
//           size: Size.infinite,
//           painter: LinesPainter(start, end),
//         ),
//       );
// }

// class LinesPainter extends CustomPainter {
//   final Offset start, end;

//   LinesPainter(this.start, this.end);

//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawLine(
//       start,
//       end,
//       Paint()
//         ..strokeWidth = 4
//         ..color = Colors.redAccent,
//     );
//   }

//   @override
//   bool shouldRepaint(LinesPainter oldDelegate) {
//     return oldDelegate.start != start || oldDelegate.end != end;
//   }
// }
