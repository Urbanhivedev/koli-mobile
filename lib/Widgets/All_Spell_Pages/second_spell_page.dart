import 'dart:async';

import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koli/Widgets/Animations/rotating_widget.dart';

import '../../Screens/menu_page.dart';
import '../../Screens/spell_page.dart';
import '../Animations/shake_widget.dart';
import '../custom_text_widgets.dart';

class SecondSpellPage extends StatefulWidget {
  const SecondSpellPage({required this.pageController, Key? key})
      : super(key: key);

  @override
  State<SecondSpellPage> createState() => _SecondSpellPageState();
  final PageController pageController;
}

class _SecondSpellPageState extends State<SecondSpellPage> {
  double track = 1.0;
  String letter = '';
  int failed = 0;
  bool isPlaying = false;
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
        track > 3
            ? Positioned(
                top: 30,
                right: 100,
                left: MediaQuery.of(context).size.width / 2,
                child: ConfettiWidget(
                  confettiController: controller,
                  blastDirectionality: BlastDirectionality.explosive,
                  gravity: 0.5,
                ))
            : const SizedBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            track > 3
                ? RotatingWidget(
                    child: Container(
                      // height: 300,
                      // width: 130,
                      padding: const EdgeInsets.all(20),
                      child: const Image(
                        image: AssetImage('assets/images/Hen.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(
                    // height: 300,
                    // width: 130,
                    padding: const EdgeInsets.all(20),
                    child: const Image(
                      image: AssetImage('assets/images/Hen.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
            verticalSpacer(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                letter == 'firstLetter' || track > 1
                    ? const FilledBox(letter: 'h')
                    : failed == 1 && track == 1
                        ? const ShakeWidget(child: EmptyErrorBox())
                        : const EmptyBox(),
                horizontalSpacer(width: 10),
                letter == 'secondLetter' || track > 2
                    ? const FilledBox(letter: 'e')
                    : failed == 1 && track == 2
                        ? const ShakeWidget(child: EmptyErrorBox())
                        : const EmptyBox(),
                horizontalSpacer(width: 10),
                letter == 'thirdLetter' || track > 3
                    ? const FilledBox(letter: 'n')
                    : failed == 1 && track == 3
                        ? const ShakeWidget(child: EmptyErrorBox())
                        : const EmptyBox(),
              ],
            ),
            verticalSpacer(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                letter == 'secondLetter' || track > 2
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: () {
                          if (track == 2) {
                            setState(() {
                              letter = 'secondLetter';
                              track = track + 1;
                            });
                          } else {
                            setState(() {
                              failed = 1;
                              Future.delayed(const Duration(milliseconds: 600))
                                  .then((value) {
                                setState(() {
                                  failed = 0;
                                });
                              });
                            });
                          }
                        },
                        child: const SingleChar(letter: 'e'),
                      ),
                horizontalSpacer(width: 10),
                letter == 'thirdLetter' || track > 3
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: () {
                          if (track == 3) {
                            setState(() {
                              letter = 'thirdLetter';
                              track = track + 1;
                            });
                            Timer(const Duration(seconds: 3), () {
                              widget.pageController.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeIn,
                              );
                            });
                          } else {
                            setState(() {
                              failed = 1;

                              Future.delayed(const Duration(milliseconds: 600))
                                  .then((value) {
                                setState(() {
                                  failed = 0;
                                });
                              });
                            });
                          }
                        },
                        child: const SingleChar(letter: 'n')),
                horizontalSpacer(width: 10),
                letter == 'firstLetter' || track > 1
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: () {
                          if (track == 1) {
                            setState(() {
                              letter = 'firstLetter';
                              track = track + 1;
                            });
                          } else {
                            setState(() {
                              failed = 1;
                            });
                            Future.delayed(const Duration(milliseconds: 600))
                                .then((value) {
                              setState(() {
                                failed = 0;
                              });
                            });
                          }
                        },
                        child: const SingleChar(letter: 'h')),
              ],
            ),
          ],
        ),
        // track > 3
        //     ? Positioned(
        //         bottom: 30,
        //         right: 10,
        //         child: GestureDetector(
        //           onTap: () {
        //             widget.pageController.nextPage(
        //                 duration: const Duration(milliseconds: 500),
        //                 curve: Curves.easeIn);
        //           },
        //           child: Container(
        //               width: 200,
        //               height: 55,
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(55),
        //                   color: Colors.black),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                   Container(
        //                     width: 120,
        //                     height: 35,
        //                     decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(35),
        //                         color: Colors.white),
        //                     child: const Center(
        //                         child: Text(
        //                       'Next',
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.bold, fontSize: 25),
        //                     )),
        //                   ),
        //                   Container(
        //                     width: 30,
        //                     height: 30,
        //                     decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(30),
        //                         color: Colors.white),
        //                     child: const Icon(
        //                         Icons.keyboard_double_arrow_right_rounded),
        //                   ),
        //                 ],
        //               )),
        //         ))
        //     : const SizedBox()
      ],
    );
  }
}
