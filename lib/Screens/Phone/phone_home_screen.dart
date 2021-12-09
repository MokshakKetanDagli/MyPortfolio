import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Screens/Phone/phone_contact_screen.dart';
import 'package:myportfolio/components/mydrawer.dart';
import 'package:myportfolio/components/myslider.dart';
import 'package:page_transition/page_transition.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Portfolio',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.easeOutBack,
                  type: PageTransitionType.rotate,
                  alignment: Alignment.center,
                  child: const PhoneContactScreen(),
                ),
              );
            },
            icon: const Icon(Icons.contact_phone_rounded),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const MySlider(),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black45,
                  Colors.black54,
                ],
                stops: [0.2, 0.9],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.all(7.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DefaultTextStyle(
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(' Flutter Developer '),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('Mokshak Ketan Dagli'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Copyright © 2021 All rights reserved',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
