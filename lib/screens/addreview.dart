import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:imei_plugin/imei_plugin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user_rating_app/homepage.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'Profile/widgets/lobal_variables.dart';

class AddReview extends StatefulWidget {
  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  String _deviceImei = '';

  @override
  void initState() {
    super.initState();
    //getImei();
  }

  Future<void> getImei() async {
    String imei = '';
    try {
      imei =
          await ImeiPlugin.getImei(shouldShowRequestPermissionRationale: true);
    } catch (e) {
      print(e);
    }

    if (!mounted) return;
    setState(() {
      _deviceImei = imei;
    });
  }

  final _formKey = GlobalKey<FormState>();
  CollectionReference _reference =
      FirebaseFirestore.instance.collection('mobile_reviews');
  String _phoneName = '';
  int _rating = 1;
  int _per = 1;
  int _cam = 1;
  int _dur = 1;
  int _bat = 1;
  int _sup = 1;
  int _dis = 1;
  String _review = '';
  String _price = '';
  XFile? _image;
  String imageUrl = '';
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPrice = TextEditingController();
  TextEditingController _controllerRating = TextEditingController();
  TextEditingController _controllerReview = TextEditingController();
  late String itemName = _controllerName.text;
  late String itemReview = _controllerReview.text;
  late String itemPrice = _controllerPrice.text;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    var image = await _picker.pickImage(source: ImageSource.gallery);
    print('${image!.path}');
    setState(() {
      _image = image;
    });
    if (_image == null) return;
    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    //Get a reference to storage root
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _controllerName,
                        decoration: InputDecoration(
                          labelText: 'Phone Name with RAM and storage',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a phone name with color, RAM and storage';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            _phoneName = value!;
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _rating
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _rating = i;
                                });
                              },
                            ),
                        ],
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: _controllerPrice,
                        decoration: InputDecoration(
                          labelText: 'Enter the Price',
                        ),
                        maxLines: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the price';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            _price = value!;
                          });
                        },
                      ),
                      SizedBox(height: 7),
                      TextFormField(
                        controller: _controllerReview,
                        decoration: InputDecoration(
                          labelText: 'Write Review',
                        ),
                        maxLines: 6,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a review';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            _review = value!;
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Enter the Device IMEI number"),
                        controller: TextEditingController(text: _deviceImei),
                         validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the IMEI number';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            _deviceImei = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: maincolor),
                          onPressed: getImei,
                          child: Text(
                            "Get IMEI",
                            style: GoogleFonts.secularOne(
                                textStyle: softnormal, color: Colors.white),
                          )),
                      SizedBox(height: 16),
                      _image == null
                          ? Container(
                              height: 200,
                              child: Center(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: maincolor,
                                    ),
                                    child: Text(
                                      'Choose an Image',
                                      style: GoogleFonts.secularOne(
                                          textStyle: softnormal,
                                          color: Colors.white),
                                    ),
                                    onPressed: () async {
                                      final ImagePicker _picker = ImagePicker();
                                      var image = await _picker.pickImage(
                                          source: ImageSource.gallery);
                                      print('${image?.path}');
                                      setState(() {
                                        _image = image;
                                      });
                                      if (_image == null) return;
                                      Reference referenceRoot =
                                          FirebaseStorage.instance.ref();
                                      Reference referenceDirImages =
                                          referenceRoot.child('images');

                                      //Create a reference for the image to be stored
                                      Reference referenceImageToUpload =
                                          referenceDirImages.child('$itemName');
                                      await referenceImageToUpload
                                          .putFile(File(image!.path));
                                      imageUrl = await referenceImageToUpload
                                          .getDownloadURL();
                                    }),
                              ),
                            )
                          : Container(
                              height: 200,
                              child: Image.file(
                                File(_image!.path),
                                fit: BoxFit.cover,
                              ),
                            ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Durability",
                            style: GoogleFonts.josefinSans(
                                textStyle: softbold, color: Colors.black),
                          ),
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _dur
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _dur = i;
                                });
                              },
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Display",
                            style: GoogleFonts.josefinSans(
                                textStyle: softbold, color: Colors.black),
                          ),
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _dis
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _dis = i;
                                });
                              },
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Battery",
                            style: GoogleFonts.josefinSans(
                                textStyle: softbold, color: Colors.black),
                          ),
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _bat
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _bat = i;
                                });
                              },
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Camera",
                            style: GoogleFonts.josefinSans(
                                textStyle: softbold, color: Colors.black),
                          ),
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _cam
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _cam = i;
                                });
                              },
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gaming",
                            style: GoogleFonts.josefinSans(
                                textStyle: softbold, color: Colors.black),
                          ),
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _per
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _per = i;
                                });
                              },
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Support",
                            style: GoogleFonts.josefinSans(
                                textStyle: softbold, color: Colors.black),
                          ),
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: i <= _sup
                                  ? Icon(Icons.star, color: maincolor)
                                  : Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  _sup = i;
                                });
                              },
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: maincolor,
                        ),
                        child: Text('Submit Review'),
                        onPressed: () async {
                          if (imageUrl.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Please upload an image')));

                            return;
                          }
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            //Create a Map of data
                            Map<String, String> dataToSend = {
                              'name': itemName,
                              'imei':_deviceImei,
                              'review': itemReview,
                              'image': imageUrl,
                              'camera': _cam.toString(),
                              'performance': _per.toString(),
                              'durability': _dur.toString(),
                              'battery': _bat.toString(),
                              'support': _sup.toString(),
                              'display': _dis.toString(),
                              'rating': _rating.toString(),
                              'price': itemPrice,
                            };
                            _reference.add(dataToSend);
                            // save the review to database or display a success message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('Review submitted for $_phoneName'),
                              ),
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Homepage())));
                          }
                        },
                      ),
                    ],
                  ))),
        ));
  }
}
