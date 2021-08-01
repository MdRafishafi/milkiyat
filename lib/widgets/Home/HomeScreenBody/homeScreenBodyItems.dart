import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../model/homeData.dart';
import '../../../widgets/Home/HomeScreenBody/itemDetails.dart';

class HomeScreenBodyItems extends StatelessWidget {
  HomeScreenBodyItems(this.data);
  Datum data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: kLabelText),
              ),
              Text(
                "SEE ALL >",
                style: TextStyle(
                  fontSize: 12,
                  color: kSeeMoreText,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 310,
          child: ListView.builder(
            itemBuilder: (context, index) => ItemDetails(data.items[index]),
            itemCount: data.items.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
