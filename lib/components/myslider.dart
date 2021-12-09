import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
