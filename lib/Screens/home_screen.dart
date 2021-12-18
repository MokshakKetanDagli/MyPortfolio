import 'package:flutter/material.dart';

import 'Phone/phone_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const PhoneHomeScreen();
        } else {
          return const PhoneHomeScreen();
          //return const WebHomeScreen();
        }
      },
    );
  }
}
