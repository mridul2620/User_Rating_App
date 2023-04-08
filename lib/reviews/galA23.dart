// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class galA23 extends StatefulWidget {
  const galA23({super.key});

  @override
  State<galA23> createState() => _galA23State();
}

class _galA23State extends State<galA23> {
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
            width: double.infinity,
            child: Image.asset("images/best/3.png"),
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
                const Text(
                  "Samsung Galaxy A23",
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
                      child:  Text("The Galaxy A23 5G is the same smartphone as its LTE counterpart, something that's not often the case with these versions. Samsung has used the Snapdragon 695 5G chipset instead of the Snapdragon 680, which in addition to the 5G modem, has allowed the GPU to draw the interface with up to 120fps for some extra smooth action on the 6.6-inch PLS LCD 1080p screen. We appreciate the 120Hz upgrade as it can make things feel smoother, especially with the new One UI 5 (with Android 13) update that's already available on this phone. The panel still has the same old-school droplet-shaped notch, which may seem dated but is not a huge blunder in our books.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Text("The phone shares an identical no-nonsense design with the rest of the Galaxy A phones with a flat Gorilla Glass front, a plastic frame and a matte plastic back that's reminiscent of the high-end Galaxy S22 series. There is no water protection on the Galaxy A23 5G model, something that's reserved for the AMOLED-packing Galaxy A33 and upwards.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Text("The Samsung Galaxy A23 runs OneUI 4.1 is based on Android 12 and packs 64GB, 128GB of inbuilt storage. The Samsung Galaxy A23 is a dual-SIM mobile. The Samsung Galaxy A23 measures 165.10 x 76.40 x 8.80mm (height x width x thickness) and weighs 195.00 grams. It was launched in Black, Blue, Peach, and White colours.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("As of 4th February 2023, Samsung Galaxy A23 price in India starts at Rs. 18,999.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
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
