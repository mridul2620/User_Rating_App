import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile/widgets/lobal_variables.dart';

class Realme extends StatefulWidget {
  const Realme({super.key});

  @override
  State<Realme> createState() => _RealmeState();
}

class _RealmeState extends State<Realme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text("Review It"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Color(0xFFEDECF2)),
        child: ListView(
          children: [
            InkWell(
              onTap: () => {},
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 15),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(0, 0),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(children: [
                      Container(
                        width: 90,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/Brands/Realme/9i.png"))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "Realme 9i (4GB RAM, 64GB, Prism Blue)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹16,999",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                        ],
                      )
                    ]),
                  )),
            ),
            InkWell(
              onTap: () => {},
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 15),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(0, 0),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(children: [
                      Container(
                        width: 90,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(                              
                                image:
                                    AssetImage("images/Brands/Realme/50pro.png"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child:  Text(
                              "Realme narzo 50 Pro 5G (6GB RAM, 128GB)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹16,999",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                        ],
                      )
                    ]),
                  )),
            ),
            InkWell(
              onTap: () => {},
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 15),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(0, 0),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(children: [
                      Container(
                        width: 90,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/Brands/Realme/10pro.png"))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "Realme 10 Pro 5G (6GB RAM, 128GB)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹16,999",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                        ],
                      )
                    ]),
                  )),
            ),
            InkWell(
              onTap: () => {},
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 15),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(0, 0),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(children: [
                      Container(
                        width: 90,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:
                                    AssetImage("images/Brands/Realme/c31.png"))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "Realme C31 (6GB RAM, 128GB)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹16,999",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                        ],
                      )
                    ]),
                  )),
            ),
            InkWell(
              onTap: () => {},
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 15),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(0, 0),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(children: [
                      Container(
                        width: 90,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "images/Brands/Realme/c35.png"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const[
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child:  Text(
                              "Realme C35 (Glowing Green, 64 GB) (4 GB RAM)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹16,999",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                        ],
                      )
                    ]),
                  )),
            ),
           
          ],
        ),
      ),
    );
  }
}