import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/screens/newreview.dart';
import 'package:user_rating_app/screens/news.dart';

import 'Profile/widgets/lobal_variables.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: const TabBar(
              labelColor: maincolor,
              indicatorColor: maincolor,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.reviews_rounded), text: "Reviews",),
                  Tab(icon: Icon(Icons.newspaper_rounded ), text: "News",)
              ]),
          body: TabBarView(
            children: [displayList(), displayNews()],
          )),
    );
  }
  // Container(
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5), color: Color(0xFFEDECF2)),
  //         child: Stack(
  //           children: [
  //             displayList(),
  //           ],
  //         ),
  //       ),

  displayList() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xFFEDECF2)),
      child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('mobile_reviews')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  DocumentSnapshot product = snapshot.data!.docs[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NewReview(product: product)));
                    }, //navigateToDetail(doc[index]),
                    child: Container(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
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
                                      image: NetworkImage(product['image']))),
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
                                      product['rating'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  child: Text(
                                    product['name'],
                                    style: GoogleFonts.josefinSans(
                                        textStyle: softbold),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  child: Row(
                                    children: [
                                      Text("₹",
                                          style: GoogleFonts.josefinSans(
                                              textStyle: softnormal,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(product['price'],
                                          style: GoogleFonts.josefinSans(
                                              textStyle: softnormal,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )),
                  );
                });
          }),
    );
  }

  displayNews() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xFFEDECF2)),
      child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('news').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  DocumentSnapshot product = snapshot.data!.docs[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => News(product: product)));
                    }, //navigateToDetail(doc[index]),
                    child: Container(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
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
                                      image: NetworkImage(product['image']))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  child: Center(
                                    child: Text(
                                      product['head'],
                                      style: GoogleFonts.josefinSans(
                                          textStyle: softbold),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )),
                  );
                });
          }),
    );
  }
}
