import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String title;
  final String body;
  final int rating;

  ReviewItem({
    required this.title,
    required this.body,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 8),
          Text(body),
          SizedBox(height: 8),
          Row(
            children: [
              for (int i = 0; i < rating; i++)
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              for (int i = 0; i < 5 - rating; i++)
                Icon(
                  Icons.star_border,
                  color: Colors.grey,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
