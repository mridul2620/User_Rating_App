import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_rating_app/homepage.dart';
import 'package:user_rating_app/login.dart';

String finalnum = '';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValidationData().whenComplete(() async {
      Timer(
        const Duration(seconds: 3),
        () {
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => Homepage()));
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => finalnum==null? Homepage(): Login()));
        },
      );
      super.initState();
    });
  }

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var mobnum = sharedPreferences.getString('number');
    setState(() {
      finalnum = mobnum!;
    });
    print(finalnum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 13, 103, 181),
          image: DecorationImage(
            image: AssetImage("images/logo.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      //child: Text("Review It", style: TextStyle(backgroundColor: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
    );
  }
}
