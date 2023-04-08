// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class Mi11Ultra extends StatefulWidget {
  const Mi11Ultra({super.key});

  @override
  State<Mi11Ultra> createState() => _Mi11UltraState();
}

class _Mi11UltraState extends State<Mi11Ultra> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
          backgroundColor: maincolor,
          title: Text("Review It"),
          centerTitle: true,
        ),
      body: Stack(
        children: [
          SizedBox(
            width:400,
            child: Image.asset("images/best/2.png"),
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
  }

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
                const Text(
                  "Mi 11 Ultra 5G",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    const Text(
                      "DeadPool",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
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
                const Text("Review",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child:  Text("Around this time last year, Xiaomi began testing the waters of the ultra-premium smartphone segment with the Mi 10 5G. It was a solid offering that got most things right, however it was quickly overshadowed by the OnePlus 8 Pro. Xiaomi went on to launch more affordable models in the same series, the latest one being the Mi 10i, which has reportedly done wonders for the company. Xiaomi continues to have great success in the budget and mainstream segments, but this year, it's aiming to disrupt the flagship segment too.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Text("The recently launched Mi 11 series boasts of impressive features at prices that are often well below those of the competition. We've already seen the great value offered by the Mi 11X, and now it's time to take a closer look at the Mi 11 Ultra. On paper, this smartphone exceeds expectations for a flagship priced at Rs. 69,999, but there's still a brand perception hurdle that Xiaomi needs to overcome. When you have flagships such as the OnePlus 9 Pro, iPhone 12 mini, and Samsung Galaxy S21 all selling at the same price as the Mi 11 Ultra, does it make sense to go with the newcomer?",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Text("The design of the Mi 11 Ultra is stunning. We'll get to the massive camera hump in a bit, but leaving that aside, it's as premium as phones get these days. It has an aluminium frame, a curved display with Corning Gorilla Glass Victus, and a ceramic back. The glass on the front is actually curved on all four sides, which is a unique design choice. The benefit of this is that gestures performed from the bottom of the screen are smoother as your finger doesn't hit any sharp edges. In fact, the metal frame, front, and back blend into one another perfectly so you don't really feel any edges at all when handling the phone.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("The Mi 11 Ultra uses Qualcomm's current top-end Snapdragon 888 5G SoC. One thing worth pointing out is that the Mi 11 Ultra supports a total of 13 5G bands, unlike other phones that have launched with the same SoC such as the OnePlus 9 Pro, which only supports two. This should ensure maximum compatibility when 5G eventually does launch in India, or if you happen to travel to another country. The phone also supports NFC, Wi-Fi 6e, and Bluetooth 5.2.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
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
  
