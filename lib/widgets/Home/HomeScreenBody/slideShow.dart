import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../model/homeData.dart';

class SlideShow extends StatefulWidget {
  Datum data;
  SlideShow(this.data);

  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        CarouselSlider(
          carouselController: _controller,
          items: widget.data.items
              .map(
                (item) => ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    item.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            aspectRatio: 1.5,
            height: 200,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.data.items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 15.0,
                height: 15.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                padding: EdgeInsets.all(1),
                decoration: _current == entry.key
                    ? BoxDecoration(
                        border: Border.all(
                          color: kSquareBorder,
                          width: 1,
                        ),
                      )
                    : BoxDecoration(),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: kSquare,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
