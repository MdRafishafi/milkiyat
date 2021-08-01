import 'package:flutter/material.dart';

import './homeScreenBodyItems.dart';
import '../../../model/homeData.dart';
import '../../../widgets/Home/HomeScreenBody/slideShow.dart';

class HomeScreenBody extends StatelessWidget {
  HomeData homeData;
  HomeScreenBody(this.homeData);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          for (int i = 0; i < homeData.data.length; i++)
            homeData.data[i].type == "slides"
                ? SlideShow(homeData.data[i])
                : HomeScreenBodyItems(homeData.data[i])
        ],
      ),
    );
  }
}
