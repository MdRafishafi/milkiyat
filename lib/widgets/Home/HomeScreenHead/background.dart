import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../model/homeData.dart';

class Background extends StatelessWidget {
  Background(this.backgroundImage);
  List<BackgroundImage> backgroundImage;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CarouselSlider(
      items: backgroundImage
          .map(
            (item) => Container(
              child: Image.network(
                item.image,
                fit: BoxFit.fill,
                width: width,
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 250,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        autoPlay: true,
      ),
      // height: 300,
      // child: ,
    );
  }
}
