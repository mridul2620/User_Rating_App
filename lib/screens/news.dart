import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/reviews/comment.dart';
import 'package:user_rating_app/stardisplay.dart';

import 'Profile/widgets/lobal_variables.dart';

class News extends StatefulWidget {
  final DocumentSnapshot product;
  News({required this.product});

  // CollectionReference reference =
  //     FirebaseFirestore.instance.collection('mobile_reviews');
  // late Stream stream = reference.snapshots();
  // News({required this.stream});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text("Review It",
            style: GoogleFonts.josefinSans(textStyle: boldstyle)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(image: NetworkImage(widget.product['image'])),
            ),
            //bottomArrow(context),
            scroll(),
          ],
        ),
      ),
    ));
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
                    Text(widget.product['head'],
                        style: GoogleFonts.josefinSans(textStyle: boldstyle)),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(
                        height: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(widget.product['body'],
                          style: GoogleFonts.ptSerif(textStyle: normalstyle)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(
                        height: 4,
                        thickness: 2,
                        color: maincolor,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ]),
            ),
          );
        });
  }
}
