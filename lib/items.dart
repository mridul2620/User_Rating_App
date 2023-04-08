import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/reviews/Mi11Ultra.dart';
import 'package:user_rating_app/reviews/galA23.dart';
import 'package:user_rating_app/reviews/oneplus10pro.dart';
import 'package:user_rating_app/reviews/pocoM5.dart';
import 'package:user_rating_app/reviews/vivov25.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'package:user_rating_app/stardisplay.dart';
import 'reviews/Apple/Ip14pro.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.58,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
         //height: 700,
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 12),
                      child: StarDisplay(value: 4),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {Navigator
                  .push(context,
                      MaterialPageRoute(builder: (context) => const IP14ProMax()));
                },
                child: Container(
                  margin: EdgeInsets.all(4),
                  child:
                      Image.asset("images/best/1.png", height: 120, width: 120),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Iphone 14 Pro Max",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "APPLE iPhone 14 Pro Max (Deep Purple, 128 GB",
                  style: GoogleFonts.josefinSans(textStyle: softnormal)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹1,32,999",
                     style: GoogleFonts.josefinSans(textStyle: softbold)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 12),
                      child: StarDisplay(value: 4),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Mi11Ultra()));},
                child: Container(
                  margin: EdgeInsets.all(7),
                  child:
                      Image.asset("images/best/2.png", height: 96, width: 110),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mi 11 Ultra 5G",
                 style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mi 11 Ultra 5G (Ceramic Black, 12GB RAM, 256GB Storage) | Snapdragon 888",
                  style: GoogleFonts.josefinSans(textStyle: softnormal)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹69,999",
                      style: GoogleFonts.josefinSans(textStyle: softbold)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 12),
                      child: StarDisplay(value: 4),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const galA23()));},
                child: Container(
                  margin: EdgeInsets.all(6),
                  child:
                      Image.asset("images/best/3.png", height: 115, width: 120),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Samsung Galaxy A23",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Samsung Galaxy A23 Blue, 6GB RAM, 128GB Storage ",
                  style: GoogleFonts.josefinSans(textStyle: softnormal)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹19,999",
                     
                          style: GoogleFonts.josefinSans(textStyle: softbold)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 12),
                      child: StarDisplay(value: 4),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const oneplus10pro()));},
                child: Container(
                  margin: EdgeInsets.all(6),
                  child:
                      Image.asset("images/best/4.png", height: 108, width: 110),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "OnePlus 10 Pro",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "OnePlus 10 Pro 5G (Volcanic Black, 12GB RAM, 256GB Storage)",
                  style: GoogleFonts.josefinSans(textStyle: softnormal)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹66,999",
                      style: GoogleFonts.josefinSans(textStyle: softbold)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 12),
                      child: StarDisplay(value: 4),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PocoM5()));},
                child: Container(
                  margin: EdgeInsets.all(6),
                  child:
                      Image.asset("images/best/5.png", height: 115, width: 120),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "POCO M5",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "POCO M5 (Power Black, 64 GB) (4 GB RAM)",
                  style: GoogleFonts.josefinSans(textStyle: softnormal)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹10,799",
                      style: GoogleFonts.josefinSans(textStyle: softbold)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 12),
                      child: StarDisplay(value: 4),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const VivoV25()));},
                child: Container(
                  margin: EdgeInsets.all(6),
                  child:
                      Image.asset("images/best/6.png", height: 115, width: 120),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Vivo V25",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Vivo V25 5G (Surfing Blue, 128 GB)  (8 GB RAM)",
                  style: GoogleFonts.josefinSans(textStyle: softnormal)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹25,799",
                      style: GoogleFonts.josefinSans(textStyle: softbold)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
