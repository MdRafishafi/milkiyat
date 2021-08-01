import 'package:flutter/material.dart';

import '../../../model/homeData.dart';
import '../../../widgets/Home/HomeScreenHead/background.dart';
import '../../../widgets/Home/HomeScreenHead/feature.dart';
import '../../../widgets/Home/HomeScreenHead/searchBar.dart';

class HomeScreenHead extends StatelessWidget {
  HomeScreenHead(this.homeData);
  HomeData homeData;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(homeData.backgroundImages),
        Container(
          margin: EdgeInsets.only(top: 110),
          child: Column(
            children: [
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              Feature(),
            ],
          ),
        ),
      ],
    );
  }
}
