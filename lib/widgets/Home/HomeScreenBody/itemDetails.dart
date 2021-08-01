import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../model/homeData.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails(this.item);
  Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 250,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 250,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    item.thumbnail,
                    height: 200,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                item.isVerified
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: kVerifiedTageContainer,
                          ),
                          child: Text(
                            "VERIFIED",
                            style: TextStyle(
                              color: kVerifiedTageText,
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 10, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: kTageContainer,
                    ),
                    child: Text(
                      item.transact.name == "Rent" ? "FOR RENT" : "FOR SALE",
                      style: TextStyle(
                        color: kTageText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹${numDifferentiation(item.price)}${item.transact.name == 'Rent' ? '/month' : ''}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  item.title,
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 11),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    for (int i = 0; i < item.attributes.length; i++)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: kAttributesContainer,
                        ),
                        constraints: BoxConstraints(maxWidth: 75),
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        padding: EdgeInsets.all(3),
                        child: Text(
                          "${item.attributes[i].value} ${item.attributes[i].unit == null ? '' : item.attributes[i].unit}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(item.locality),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  color: kDivider,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  numDifferentiation(val) {
    if (val >= 10000000) {
      val = (val / 10000000).toStringAsFixed(2) + ' Crore';
    } else if (val >= 100000) {
      val = (val / 100000).toStringAsFixed(2) + ' Lakh';
    }
    /*else if(val >= 1000) val = (val/1000).toFixed(2) + ' K';*/
    return val;
  }
}
