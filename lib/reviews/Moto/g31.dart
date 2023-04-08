import 'package:flutter/material.dart';
import 'package:user_rating_app/reviews/comment.dart';

import '../../screens/Profile/widgets/lobal_variables.dart';
import '../../stardisplay.dart';

class G31 extends StatelessWidget {
  const G31({super.key});

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
                      "Motorola Moto G31",
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
                          backgroundImage: AssetImage("images/Brands/Moto/g52.png"),
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
                          "While the Moto G30 played things safe with a budget Qualcomm processor – the 2GHz octa-core Snapdragon 662 – the G31 takes a risk by switching over to the MediaTek Helio G85. It’s another octa-core 2GHz chip, so it’s debatable how much of an upgrade it will be, but it’s nonetheless a difference. There’s still 4GB of RAM and a chunky 5,000mAh battery inside, but the screen tech has been upgraded from a simple 720p IPS panel to a 1080p AMOLED affair.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "The main upgrade for the Moto G31 seems to be the addition of an FHD AMOLED screen. It’s a large one, too, measuring 6.4in from corner to corner, with a resolution of 2,400 x 1,080, which equates to around 411 pixels per inch – a big advance on the 720p panel in the G30.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "With prices starting from Rs. 12,999, the Motorola Moto G31 offers a high-quality AMOLED display, a water-resistant body, and a near-stock Android software experience. However it isn't on par with its predecessor in some regards, and its imaging capabilities are a mixed bag and far from consistent. It's not an all-rounder but might still be a good fit for those looking for a vanilla Android software experience. ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "The software experience on the Moto G31 was smooth overall with regular use. Upgraders will miss the fluid 90Hz display from the Moto G30, but performance was good and apps remained in memory for a long time. The 6.4-inch AMOLED panel offers deep blacks and makes for an immersive viewing experience when watching movies and playing games. The phone has Widevine L1 DRM certification, which allows for full-HD playback resolution in streaming apps. The Moto G31 has a single bottom-firing speaker that was loud enough, but just not as immersive as the stereo speakers found on competing smartphones.",
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
