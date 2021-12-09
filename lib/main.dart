import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const PhoneHomeScreen();
        } else {
          return const WebHomeScreen();
        }
      },
    );
  }
}

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
            onPressed: () {},
            icon: const Icon(Icons.contact_phone_rounded),
          ),
        ],
      ),
      drawer: const Drawer(),
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
                // const Text(
                //   'Flutter Developer',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 30,
                //     fontWeight: FontWeight.w300,
                //   ),
                // ),
                // const Text(
                //   'Mokshak Ketan Dagli',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 30,
                //     fontWeight: FontWeight.w300,
                //   ),
                // ),
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
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Click here to know about Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class MySlider extends StatelessWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        'https://github.com/MokshakKetanDagli/MyPortfolio/blob/master/assets/Profile%20Picture.jpg?raw=true',
        'https://github.com/MokshakKetanDagli/MyPortfolio/blob/master/assets/Formal%20Picture.jpg?raw=true'
      ]
          .map((e) => SizedBox(
                child: Image.network(
                  e,
                  fit: BoxFit.fitHeight,
                ),
              ))
          .toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
