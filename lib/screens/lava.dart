import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile/widgets/lobal_variables.dart';

class Lava extends StatefulWidget {
  const Lava({super.key});

  @override
  State<Lava> createState() => _LavaState();
}

class _LavaState extends State<Lava> {
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
                                    "images/Brands/Lava/z61pro.png"))),
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
                              "Lava Z61 Pro(4GB RAM, 64GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹11,999",
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
                                    AssetImage("images/Brands/Lava/z66.png"))),
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
                              "Lava Z66(4GB RAM, 64GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹11,999",
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
                                    AssetImage("images/Brands/Lava/z71.png"))),
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
                              "Lava Z71(4GB RAM, 64GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹11,999",
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
                                    AssetImage("images/Brands/Lava/z92.png"))),
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
                              "Lava Z92(4GB RAM, 64GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹11,999",
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
                                    AssetImage("images/Brands/Lava/z93.png"))),
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
                              "Lava Z93(4GB RAM, 64GB Storage)",
                              style: GoogleFonts.josefinSans(textStyle: softbold)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "₹11,999",
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
