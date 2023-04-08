import 'dart:async';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_rating_app/homepage.dart';
import 'package:user_rating_app/login/signin.dart';
import 'package:user_rating_app/screens/Profile/user_prefs.dart';
import 'package:user_rating_app/screens/Profile/widgets/appbar.dart';
import 'package:user_rating_app/splashscreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'login.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  await UserPreferences.init();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? mobileNumber = prefs.getString('phone_number');
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // var mobnum = prefs.getString('number');
  runApp(MyApp(mobileNumber: mobileNumber));
}

class MyApp extends StatelessWidget {
  final String? mobileNumber;

  MyApp({required this.mobileNumber});

  //static final String title = 'User Profile';
  @override
  Widget build(BuildContext context) {
    //final user = UserPreferences.getUser();
    if (mobileNumber == null) {
      return MaterialApp(home: PhoneAuthLoginPage(),);
    } else {
      return MaterialApp(home: Homepage());
    }
  }
}
