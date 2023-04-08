import 'package:flutter/material.dart';
import 'package:user_rating_app/desc.dart';
// import 'item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("images/brands/1.png"),
          ),
          //buttomArrow(),

        ],
      ),
    ));
  }


}
