import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/homepage.dart';
import 'package:user_rating_app/screens/Profile/user_model.dart';
import 'package:user_rating_app/screens/Profile/user_prefs.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'package:user_rating_app/screens/Profile/widgets/profile_widget.dart';

import 'editprofile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
                setState(() {});
              },
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 24),
            buildDevice(user),
            const SizedBox(height: 48),
            buildAbout(user),
            const SizedBox(height: 24),
            buildAddress(user),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(193, 51, 28, 146)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: const Text('Continue'))
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(user.name, style: GoogleFonts.josefinSans(textStyle: boldstyle)),
          const SizedBox(height: 4),
          Text(user.email,
              style: GoogleFonts.josefinSans(
                  textStyle: softnormal, color: Colors.grey))
        ],
      );

  Widget buildDevice(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Current Device',
                style: GoogleFonts.josefinSans(textStyle: boldstyle)),
            const SizedBox(height: 16),
            Text(user.dev,
                style: GoogleFonts.josefinSans(textStyle: softnormal)),
          ],
        ),
      );
  Widget buildAddress(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Address',
                style: GoogleFonts.josefinSans(textStyle: boldstyle)),
            const SizedBox(height: 16),
            Text(user.address,
                style: GoogleFonts.josefinSans(textStyle: softnormal)),
          ],
        ),
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About', style: GoogleFonts.josefinSans(textStyle: boldstyle)),
            const SizedBox(height: 16),
            Text(user.about,
                style: GoogleFonts.josefinSans(textStyle: softnormal)),
          ],
        ),
      );
}
