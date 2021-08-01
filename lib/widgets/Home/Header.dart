import 'package:flutter/material.dart';

import '../../colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 13, right: 20),
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 25,
              color: kMenuIcon,
            ),
            onPressed: null,
          ),
          Text(
            "Address",
            style: TextStyle(
              fontSize: 18,
              color: kAddress,
            ),
          ),
        ],
      ),
      // child: ,
    );
  }
}
