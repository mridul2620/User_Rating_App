import 'package:flutter/material.dart';
import 'package:user_rating_app/desc.dart';


class Item {
  final String itemName;
  final String itemDescription;
  final String itemImage;

  Item({
    required this.itemName,
    required this.itemDescription,
    required this.itemImage,
  });
}

class ItemGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: GridView.count(
          childAspectRatio: 0.68,
        physics: NeverScrollableScrollPhysics(),
         shrinkWrap: true,
          crossAxisCount: 2,

          children: items.map((item) {
            return GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ItemDetailsPage(item: item),
                //   ),
                // );
              },
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Image.network(
                        item.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      item.itemName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rating: ${  item.rating.toString()}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
