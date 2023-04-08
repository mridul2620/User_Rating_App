// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'package:user_rating_app/stardisplay.dart';

class IP14ProMax extends StatefulWidget {
  const IP14ProMax({super.key});

  @override
  State<IP14ProMax> createState() => _IP14ProMaxState();
}

class _IP14ProMaxState extends State<IP14ProMax> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
          backgroundColor: maincolor,
          title: Text("Review It", style: GoogleFonts.josefinSans(textStyle: boldstyle)),
          centerTitle: true,
        ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("images/best/1.png"),
          ),
          //bottomArrow(context),
          scroll(),
        ], 
      ),
    ));
  }

  // bottomArrow(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.all(20.0),
  //     child: InkWell(
  //       onTap: () {
  //         Navigator.pop(context);
  //       },
  //       child: Container(
  //           clipBehavior: Clip.hardEdge,
  //           height: 55,
  //           width: 55,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(25),
  //             color: Colors.white,
  //           ),
  //           child: BackdropFilter(
  //             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
  //             child: Container(
  //               height: 55,
  //               width: 55,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(25),
  //               ),
  //               child: const Icon(
  //                 Icons.arrow_back_ios,
  //                 size: 20,
  //                 color: Colors.black,
  //               ),
  //             ),
  //           )),
  //     ),
  //   );
  // }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  color: Color(0xFFEDECF2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: maincolor,
                      )
                    ],
                  ),
                ),
                 Text(
                  "Apple Iphone 14 Pro Max",
                  style: GoogleFonts.josefinSans(textStyle: boldstyle)
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/pp.jfif"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     Text(
                      "DeadPool",
                      style: GoogleFonts.josefinSans(textStyle: boldstyle),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Color(0xFFEDECF2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const IconTheme(
                        data: IconThemeData(color: maincolor, size: 16),
                        child: StarDisplay(value: 5),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  height: 4,
                ),
                ),
                Text("Review",
                    style: GoogleFonts.josefinSans(textStyle: boldstyle),),
                    const SizedBox(height: 10,),
                    Padding(
                      padding:EdgeInsets.all(8.0),
                      child:  Text("The iPhone 14 Pro Max isnt just the most powerful phone around. It’s a joy to use, thanks to the clever new Dynamic Island for displaying notifications and live activities. Apple’s largest Pro model also delivers fantastic cameras — including a new 48MP main shooter — an always-on display, compelling Action mode for video and excellent battery life. It’s pricey, but it’s also the best phone money can buy.", style: GoogleFonts.josefinSans(textStyle: normalstyle),),
                    ),
                    const SizedBox(height: 5,),
                    Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Text("Once again Apple has made the fastest phone around with its A16 Bionic chip, but it’s not really about benchmarks. Instead, it’s about what this chip enables, from the always-on display to the powerful 48MP camera and what it can do. Add in extra-long battery life and you have the best iPhone you can buy as well as the best phone you can buy period. ",style: GoogleFonts.josefinSans(textStyle: normalstyle),),
                    ),
                    const SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Text("Phone 14 Pro Max is based on iOS 16 and packs 128GB, 256GB, 512GB, 1TB of inbuilt storage. The iPhone 14 Pro Max measures 160.70 x 77.60 x 7.85mm (height x width x thickness) and weighs 240.00 grams. It was launched in Space Black, Silver, Gold, and Deep Purple colours. It features an IP68 rating for dust and water protection.",style: GoogleFonts.josefinSans(textStyle: normalstyle),),
                    ),
                    const SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("As of 4th February 2023, iPhone 14 Pro Max price in India starts at Rs. 132,999.",style: GoogleFonts.josefinSans(textStyle: normalstyle),),
                    ),
                     const Padding(padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  height: 4,
                ),
                ),
                CommentPage(),
              ]),
            ),
          );
        });
  }
  }
