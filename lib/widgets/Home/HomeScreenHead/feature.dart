import 'package:flutter/material.dart';

import '../../../colors.dart';

class Feature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: kButton,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            height: double.infinity,
            width: width / 2.9,
            alignment: Alignment.center,
            child: Text(
              "FIND PROPERTY",
              style: TextStyle(
                color: kButtonText,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kButton,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            height: double.infinity,
            alignment: Alignment.center,
            width: width / 2.9,
            child: Text(
              "POST A PROPERTY",
              style: TextStyle(
                color: kButtonText,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
