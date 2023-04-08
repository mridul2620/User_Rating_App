import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile/widgets/lobal_variables.dart';

class Moto extends StatefulWidget {
  const Moto({super.key});

  @override
  State<Moto> createState() => _MotoState();
}

class _MotoState extends State<Moto> {
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
                                image:
                                    AssetImage("images/Brands/Moto/g82.png"))),
                      ),
                      SizedBox(
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
                              "Motorola g82 5G (6GB, 128GB)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹13,999",
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
                                    "images/Brands/Moto/edge20pro.png"))),
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
                            child: Text(
                              "Motorola Edge 20 Pro 5G (Iridescent Cloud, 128 GB) (8 GB RAM)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹13,999",
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
                                    AssetImage("images/Brands/Moto/g52.png"))),
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
                              "Motorola g52 (4GB, 64GB)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹13,999",
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
                                    AssetImage("images/Brands/Moto/g2.png"))),
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
                              "Motorola Moto G62(6GB RAM, 128GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹13,999",
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
                                    AssetImage("images/Brands/Moto/g71.png"))),
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
                            child: Text(
                              "Motorola Moto G71(6GB RAM, 128GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹13,999",
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
