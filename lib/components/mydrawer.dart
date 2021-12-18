import 'package:flutter/material.dart';
import 'package:myportfolio/Screens/home_screen.dart';
import 'package:myportfolio/aboutme_screen.dart';
import 'package:page_transition/page_transition.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () => Navigator.pushReplacement(
              context,
              PageTransition(
                child: const HomeScreen(),
                type: PageTransitionType.rightToLeft,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'About Me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () => Navigator.pushReplacement(
              context,
              PageTransition(
                child: const AboutMeScreen(),
                type: PageTransitionType.rightToLeft,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Services',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Experiences',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Works',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Contact Me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
