// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class PocoM5 extends StatefulWidget {
  const PocoM5({super.key});

  @override
  State<PocoM5> createState() => _PocoM5State();
}

class _PocoM5State extends State<PocoM5> {
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
            child: Image.asset("images/best/5.png"),
          ),
          // bottomArrow(context),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      "Poco M5",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(
                        height: 4,
                      ),
                    ),
                    const Text("Review",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "The Poco M5, just like the Poco M4 5G announced in August, is one of Xiaomi's most affordable handsets in the portfolio. Both handsets are quite similar, but the M5 lacks 5G connectivity and it's available in more markets worldwide. There's also an Indian variant of the M5, which is mostly identical to its global counterpart, so it's safe to use this review as a reference if you are located in India and you are deciding on whether you should buy the Poco M5.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Even though the Poco M4 5G offers a Dimensity chipset while the more recent M5 relies on a supposedly less powerful Helio G99 (going by MediaTek's naming scheme), there shouldn't be any substantial difference in performance. The Dimensity 700 on the M4 5G has a 5G modem and it's based on a 7nm manufacturing process, while the Helio G99 employs the same octa-core CPU, the same Mali-G57 MC2 GPU but omits the 5G part. So in a way, these two are 4G and 5G variants of the same handset.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Coming to the cameras, the POCO M5 ships with a 50MP ISOCELL JN1 primary sensor which has been paired with a couple of 2MP depth and macro sensors. The images clicked from a 50MP primary sensor in adequate lighting conditions impressed me with their details and dynamic range. The colour accuracy could have been better, but otherwise, the pictures looked visually appealing. The sensor was also quick to focus and process images. The portrait mode works well – mostly on human subjects, but doesn’t look very natural. As for the 2MP macro sensor, it fails to offer crisp shots of the close-up subjects in daylight due to its low resolution.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "The POCO M5 starts at Rs 12,499, and for the price, the handset comes across as a good proposition. The phone performs admirably and while the handset doesn’t come with a 5G-enabled SoC, the Helio G99 chipset powering the phone offers more raw compute than say, the Dimensity 700 powering the POCO M4 5G. It also helps that the handset comes with an interesting design that helps it stand out among its competitors.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
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
