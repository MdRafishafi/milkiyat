import 'package:flutter/material.dart';

import '../../../colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: kSearchBarContainer,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Locality, Commercial, Flat",
            style: TextStyle(color: kSearchBarText),
          ),
          Container(
            decoration: BoxDecoration(
              color: kButton,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            width: 80,
            height: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Search",
              style: TextStyle(color: kButtonText),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
