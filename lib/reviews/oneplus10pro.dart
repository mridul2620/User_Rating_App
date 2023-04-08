// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class oneplus10pro extends StatefulWidget {
  const oneplus10pro({super.key});

  @override
  State<oneplus10pro> createState() => _oneplus10proState();
}

class _oneplus10proState extends State<oneplus10pro> {
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
            child: Image.asset("images/best/4.png"),
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
                  "OnePlus 10 Pro",
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
                      child:  Text("The launch of the OnePlus 10 Pro 5G was a bit different this year for a couple of reasons. It was launched in China at the start of 2022 and is only now coming to other countries, including India. Secondly, we have only a single model in the new 10 series so far, compared to the three models that debuted with the 9 series in India last year. I'm pretty sure a lower-priced OnePlus 10 and OnePlus 10R are in the works for sometime later this year, but for now our focus is only on the flagship model.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Text("The OnePlus 10 Pro 5G's design did attract some criticism initially since the shape and layout of the camera module make it look like a kitchen hob. I think it looks very distinctive and much better than the 9 Pro's camera module. A bit of inspiration seems to have been taken from Samsung's recent flagships, on which the camera module merges with the side frame. I like the green shade that OnePlus has used, and the fact that both the colour options have a matte glass texture is a good design choice in my book. This green colour and finish reminded me a lot of the OnePlus 8 Pro (Review), which I think is still one of the best designed OnePlus smartphones.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Text("There are no points for guessing the SoC in the OnePlus 10 Pro 5G: like every other Android flagship in 2022, it uses the Qualcomm Snapdragon 8 Gen 1. This is accompanied by LPDDR5 RAM and UFS 3.1 storage. OnePlus claims that the cooling system in the 10 Pro 5G is its most advanced yet and it should be able to keep the chip cool under stress. There's a new ‘SLA X-axis' linear haptic motor which is said to be more responsive, stronger and quieter than the one in the OnePlus 9 (Review) and 9 Pro. The 10 Pro 5G also supports many more 5G bands in India; nine in total compared to just the two in the 9 Pro.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("First, the prices in India. The OnePlus 10 Pro 5G is available starting with 8GB of RAM and 128GB of storage, priced at Rs. 66,999. There's also a top-end variant with 12GB of RAM and 256GB of storage that's priced at Rs. 71,999. The 10 Pro 5G costs about Rs. 2,000 more than the OnePlus 9 Pro did when it launched. It will be available in two colours in India: Volcanic Black and Emerald Forest.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
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
