// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class VivoV25 extends StatefulWidget {
  const VivoV25({super.key});

  @override
  State<VivoV25> createState() => _VivoV25State();
}

class _VivoV25State extends State<VivoV25> {
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
            child: Image.asset("images/best/6.png"),
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
                  "Vivo V25",
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
                      child:  Text("The Vivo V25 5G is the company’s new V-series smartphone positioned under Rs 30,000. The handset comes with the same colour-changing design as its elder sibling, the Vivo V25 Pro (review), and boasts advanced cameras. The phone also rocks a 90Hz AMOLED screen, a 5G-capable MediaTek chipset, and fast 44W charging. ",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Text("The Vivo V25 5G sports a 6.44-inch AMOLED display with FHD+ resolution, 90Hz refresh rate, and a U-shape notch atop. The screen is not quite bezel-less, but you do get a good viewing experience. Additionally, the colours are punchy and bright, while the contrast ratio is acceptable. The display also offers good viewing angles and ample brightness to make for a decent experience even under direct sunlight. The screen comes with 1300 nits of peak brightness and HDR10+ support. It is also Widevine L1 certified, which means the phone can stream HD videos. The 90Hz refresh rate works well across the interface and supported apps. Be that as it may, I feel Vivo may have missed a trick here by not including a 120Hz refresh rate screen. ",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Text("Coming to the meat of the matter, the Vivo V25 5G is powered by MediaTek Dimensity 900 SoC. It is a slightly dated chipset but gets the job done. The app load times were quick, while the multi-tasking was smooth. The handset also handled games really well, especially casual ones such as Pool 8, Real Cricket 22, and Temple Run, and kept its thermals in check under sustained loads. As for the benchmarking results, the phone offered a respectable score of 4,72,795 on Antutu and a multi-core score of 2,056 on Geekbench 5. On the CPU Throttle test; however, the phone’s performance throttles a bit. The device ran at 80 percent of its peak performance which is decent enough but not great. The SoC is paired with 8GB/ 12GB RAM, which can be further expanded up to 8GB virtually using the phone’s storage. The handset is equipped with up to 256GB of user-expandable storage. ",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("The Vivo V25 5G is priced in India at Rs 27,999 for the 8GB RAM variant, while the 12GB RAM option costs Rs 31,999.  The handset could have fared better with stereo speakers, a 120Hz refresh rate screen, and a faster chipset. All said and done though, the phone offers pretty much everything that you can expect from a mid-ranger. From its eye-catching colour-changing design to reliable performance, vibrant screen, decent cameras and battery life, the Vivo V25 5G ticks most boxes.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
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
