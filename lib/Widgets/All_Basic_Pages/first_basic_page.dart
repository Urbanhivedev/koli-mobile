import 'dart:developer';
import 'dart:ui';

import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/menu_page.dart';
import '../custom_text_widgets.dart';

class FirstBasicPage extends StatefulWidget {
  const FirstBasicPage({Key? key}) : super(key: key);

  @override
  State<FirstBasicPage> createState() => _FirstBasicPageState();
}

class _FirstBasicPageState extends State<FirstBasicPage> {
  int correctAnimal = 0;

  double correctImageHeight = 120;
  double correctImageWidth = 120;

  bool isCorrectAnimal = false;

  ConfettiController confettiController = ConfettiController();

  // @override
  @override
  Widget build(BuildContext context) {
    return ConfettiWidget(
      confettiController: confettiController,
      blastDirectionality: BlastDirectionality.explosive,
      gravity: 0.5,
      child: Stack(
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
                        Draggable(
                          data: Colors.red,
                          feedback: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 150,
                            width: 150,
                            child: const Image(
                              image: AssetImage('assets/images/monkey.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          childWhenDragging: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 130,
                            width: 130,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 3,
                                sigmaY: 2,
                              ),
                              child: Image.asset('assets/images/monkey.png'),
                            ),
                          ),
                          child: const SizedBox(
                            height: 130,
                            width: 130,
                            child: Image(
                              image: AssetImage('assets/images/monkey.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          onDragStarted: () {
                            correctAnimal = 1;
                          },
                          onDragCompleted: () {
                            correctAnimal = 1;
                          },
                        ),

                        // verticalSpacer(height: 70),
                        // Container(
                        //   height: 100,
                        //   width: 100,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(color: Colors.black)),
                        // ),
                      ],
                    ),
                    // horizontalSpacer(width: 60),
                    Column(
                      children: [
                        Draggable(
                          data: Colors.red,
                          feedback: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 150,
                            width: 150,
                            child: const Image(
                              image: AssetImage('assets/images/dog.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          childWhenDragging: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 130,
                            width: 130,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 3,
                                sigmaY: 2,
                              ),
                              child: Image.asset('assets/images/dog.png'),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 130,
                                width: 130,
                                child: Image(
                                  image: AssetImage('assets/images/dog.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Visibility(
                                visible: isCorrectAnimal == true ? true : false,
                                child: Positioned(
                                  top: 5,
                                  left: 20,
                                  child: Transform(
                                    transform: Matrix4.skewY(0.2)
                                      ..rotateZ(3.14 / 12.0),
                                    child: const SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/bone.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onDragStarted: () {
                            correctAnimal = 2;
                          },
                          onDragCompleted: () {
                            correctAnimal = 2;
                          },
                        ),

                        // verticalSpacer(height: 70),
                        // Container(
                        //   height: 100,
                        //   width: 100,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpacer(height: 80),
              DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: correctImageHeight,
                    width: correctImageWidth,
                    child: const Image(
                      image: AssetImage('assets/images/bone.png'),
                      fit: BoxFit.cover,
                    ),
                  );
                },
                onAccept: (data) {
                  setState(() {
                    if (correctAnimal == 1) {
                      isCorrectAnimal = false;
                      confettiController.stop();
                      correctImageHeight = 120;
                      correctImageWidth = 120;
                    } else if (correctAnimal == 2) {
                      isCorrectAnimal = true;
                      confettiController.play();
                      correctImageHeight = 80;
                      correctImageWidth = 80;
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
