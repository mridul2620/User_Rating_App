import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/screens/apple.dart';
import 'package:user_rating_app/screens/infinix.dart';
import 'package:user_rating_app/screens/iqoo.dart';
import 'package:user_rating_app/screens/lava.dart';
import 'package:user_rating_app/screens/mi.dart';
import 'package:user_rating_app/screens/moto.dart';
import 'package:user_rating_app/screens/oneplus.dart';
import 'package:user_rating_app/screens/poco.dart';
import 'package:user_rating_app/screens/realme.dart';
import 'package:user_rating_app/screens/samsung.dart';
import 'package:user_rating_app/screens/vivo.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Apple())));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/Brands/1.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Iphone",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Realme())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/2.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Realme",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Xiaomi())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/3.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Xiaomi",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Moto())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/4.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Motorola",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Samsung())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/5.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Samsung",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Iqoo())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/6.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "IQOO",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Poco())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/7.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Poco",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Infinix())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/8.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "Infinix",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Oneplus())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/9.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "OnePlus",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Lava())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/10.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "LAVA",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
              ]),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Vivo())));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/Brands/11.png",
                  width: 105,
                  height: 155,
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "VIVO",
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
              ]),
            )),
      ]),
    );
  }
}
