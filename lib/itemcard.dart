import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final String itemDescription;
  final double itemRating;

  const ItemCard({
    Key? key,
    required this.itemName,
    required this.itemImage,
    required this.itemDescription,
    required this.itemRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.asset(itemImage),
          Text(itemName),
          Text(itemDescription),
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(itemRating.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}