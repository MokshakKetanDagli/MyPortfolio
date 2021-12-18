import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/mydrawer.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.transparent,
          title: const Text(
            'About Me',
          ),
        ),
        drawer: const MyDrawer(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 600) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'A Flutter Developer Based In India',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Table(
                      textBaseline: TextBaseline.alphabetic,
                      columnWidths: const <int, TableColumnWidth>{
                        0: FractionColumnWidth(0.3),
                        1: FractionColumnWidth(0.7),
                      },
                      children: const [
                        TableRow(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Mokshak Ketan Dagli',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              'Date of birth',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '14 Jan 2000',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '6/1214,J3 Sunrise Apartment Flat - D3 Indian Chamber Road Kochi Mattancherry Ernakulam Kerala India',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              'Pincode',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '682002',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              'Email Id',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'daglimokshak@gmail.com',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              'Phone No',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '+91 7736271855',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: constraints.maxWidth - 50,
                      height: 100,
                      child: AnimatedTextKit(animatedTexts: const []),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      'A Flutter Developer Based In India PC',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }
}
