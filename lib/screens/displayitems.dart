// import 'dart:collection';

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:user_rating_app/screens/Profile/widgets/newreview.dart';

// import 'newreview.dart';

// class DisplayList extends StatefulWidget {
//   const DisplayList({super.key});

//   @override
//   State<DisplayList> createState() => _DisplayListState();
// }

// class _DisplayListState extends State<DisplayList> {
//   CollectionReference _reference =
//       FirebaseFirestore.instance.collection('mobile_reviews');
//   late Stream _stream;
//   @override
//   void initState() {
//     _stream = _reference.snapshots();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//           stream: _stream,
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.hasError) {
//               return Center(
//                 child: Text(snapshot.error.toString()),
//               );
//             }
//             if (snapshot.connectionState == ConnectionState.active) {
//               QuerySnapshot querySnapshot = snapshot.data;
//               List<QueryDocumentSnapshot> documents = querySnapshot.docs;
//               return ListView.builder(
//                   itemCount: documents.length,
//                   itemBuilder: (context, index) {
//                     QueryDocumentSnapshot doc = documents[index];
//                     return InkWell(
//                           onTap: () {Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => NewReview()));},
//                            child: Container(
//                                           padding: const EdgeInsets.only(left: 8, right: 15),
//                                           margin:
//                           const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//                                           decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                                 blurRadius: 2,
//                                 offset: Offset(0, 0),
//                                 color: Colors.grey.withOpacity(0.2))
//                           ]),
//                                           child: Container(
//                         padding: const EdgeInsets.all(8),
//                         child: Row(
//                           children: [
//                           Container(
//                             width: 90,
//                             height: 120,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 image: DecorationImage(
//                                     image: NetworkImage('${doc['image']}')
//                                     )),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.star,
//                                     size: 24,
//                                     color: Colors.yellowAccent,
//                                   ),
//                                   Text(
//                                     '${doc['rating']}',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.grey),
//                                   )
//                                 ],
//                               ),
//                               // Container(
//                               //   child: Text('${doc['review']}'),
//                               // ),
//                               Container(
//                                 width: MediaQuery.of(context).size.width * 0.55,
//                                 child: Text(
//                                   '${doc['name']}',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 17,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                               Container(
//                                 width: MediaQuery.of(context).size.width * 0.55,
//                                 child: Text(
//                                   "₹1,19,999",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 17,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ]),
//                                           )),
                        
//                       );
//                   });
//             }
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//     );
//   }
// }
