import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import '../../screens/Profile/widgets/lobal_variables.dart';

class iqoo9T extends StatefulWidget {
  const iqoo9T({super.key});

  @override
  State<iqoo9T> createState() => _iqoo9TState();
}

class _iqoo9TState extends State<iqoo9T> {
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
            child: Image.asset("images/Brands/Iqoo/9.png"),
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
                      "iQOO 9T 5G",
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
                          backgroundImage: AssetImage("images/Brands/g52.png"),
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
                          child: IconTheme(
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
                          "Since its debut in the country, iQOO has taken the Indian smartphone space by storm and the company’s offerings often push the boundaries in the performance department. The iQOO 9 series, for instance, was backed by flagship-grade Snapdragon chipsets, making them a godsend for gamers and performance enthusiasts. Rest assured, iQOO is reining in spec-heads left, right and centre and the company hopes to sway even more buyers to its doorsteps with the iQOO 9T. Armed with Qualcomm’s Snapdragon 8+ Gen 1 SoC, the iQOO 9T has all the makings of a snappy Android phone. So, in this review, let’s take a closer look at the device and see if it is truly worth its MRP of Rs 49,999 in India.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "In terms of sheer performance, there is no catching up to the iQOO 9T. Add great daylight photography to the mix, along with a fluid 120Hz E5 AMOLED panel, 120W fast wired charging, and good-sounding stereo speakers and you’ll find it hard to turn a blinds eye on iQOO’s latest flagship.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "The iQOO 9T impresses in the aesthetics department and the device borrows a few design elements from the iQOO 9 and the iQOO 9 Pro launched a while ago. I was sent the Alpha colourway for review, which skillfully partitions the handset’s two-toned finish comprising a glossy back carbon fiber gradient and a matte black, sandstone-esque texture. The phone is extremely well built too, although the device is a bit on the heavier side and weighs 206 grams. The handset’s heft can be accredited to a sizeable vapour chamber that ensures the smartphone’s temps don’t spike erratically under load, along with its chunky 4,700mAh battery. Even so, the subtle curvature on the back panel makes it easier to grip the phone. ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "The iQOO 9T ships with a 6.78-inch, FHD+, E5 AMOLED panel that refreshes at 120Hz. The display is not compliant with LTPO 2.0 tech, but it does use a smart-switch feature that oscillates the refresh rate between 60Hz and 120Hz as and when required. Apart from that, the handset’s E5 AMOLED screen is more energy-efficient than competing devices with Samsung’s E4 displays. The 9T also makes use of the company’s V1+ dedicated display chip that, among other things, increases the frame rate in select Android games and optimises colours too. ",
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
