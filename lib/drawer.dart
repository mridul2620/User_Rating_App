import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/Contact.dart';
import 'package:user_rating_app/homepage.dart';
import 'package:user_rating_app/login.dart';
import 'package:user_rating_app/login/signin.dart';
import 'package:user_rating_app/privacypolicy.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'package:user_rating_app/screens/diagram.dart';
import 'screens/Profile/user_prefs.dart';


class MYdrawer extends StatefulWidget {
  const MYdrawer({super.key});

  @override
  State<MYdrawer> createState() => _MYdrawerState();
}

class _MYdrawerState extends State<MYdrawer> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: maincolor,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome',
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(user.name,
                  style: GoogleFonts.josefinSans(textStyle: softbold)
                ),
              ),

        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title:  Text('Home', style: GoogleFonts.josefinSans(textStyle: softbold)),
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Homepage()));
            });
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.add_box_outlined,
          ),
          title: const Text('Add Review'),
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>AddReview()
));
            });
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.policy_rounded,
          ),
          title:  Text('Privacy Policy',style: GoogleFonts.josefinSans(textStyle: softbold)),
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicy()));
            });
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.add_call,
          ),
          title:  Text('Contact Us', style: GoogleFonts.josefinSans(textStyle: softbold)),
          onTap: () {
            setState(() {
              var push = Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Contact()));
            });
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout_rounded,
          ),
          title:  Text('Logout', style: GoogleFonts.josefinSans(textStyle: softbold)),
          onTap: () {
            setState(() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PhoneAuthLoginPage()));
            });
          },
        ),
      ]),
    );
  }
}
