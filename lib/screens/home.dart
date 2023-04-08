import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/items.dart';
import 'package:user_rating_app/widgets/brands.dart';

import 'Profile/widgets/lobal_variables.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          //HomeAppBAr(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(215, 246, 233, 233),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Here...",
                          fillColor: Colors.blueAccent,
                        ),
                      ),
                    ),
           
                  
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text("Brands",
                      style: GoogleFonts.josefinSans(textStyle: boldstyle)),
                ),
                CategoriesWidget(),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Best Selling",
                       style: GoogleFonts.josefinSans(textStyle: boldstyle)
                      ),
                    )),
                ItemsWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
