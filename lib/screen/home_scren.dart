import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: const Text(
              'Home Screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times',
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    '../assets/images/Login-pana.png',
                    fit: BoxFit.cover,
                    scale: 2.0,
                  ),

                  // ANIMATED TEXT
                  /** Your parent widget here */
                  AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Welcome',
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontFamily: 'Times News Roman',
                          )),
                      WavyAnimatedText('Follow me at Github @omar6260',
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontFamily: 'Times News Roman',
                          )),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      debugPrint("Oumar");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
