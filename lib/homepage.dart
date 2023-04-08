import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_rating_app/drawer.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'package:user_rating_app/screens/addreview.dart';
import 'package:user_rating_app/screens/explore.dart';
import 'package:user_rating_app/screens/explorelist.dart';
import 'package:user_rating_app/screens/home.dart';
import 'package:user_rating_app/screens/Profile/profile.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _onItemTapped(int index) {
    setState(() {
      ind = index;
    });
  }
  @override
  void initState() {
    super.initState();
    initialization();
  }
  void initialization() async {
    FlutterNativeSplash.remove();
  }

  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          title: Text("Review It",style: GoogleFonts.josefinSans(textStyle: boldstyle)),
          centerTitle: true,
        ),
        body: getSelectedWidget(ind),
        drawer: MYdrawer(),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.red,
          // fixedColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.menu),
            // ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add Review"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          currentIndex: ind,
          unselectedItemColor: Colors.black,
          selectedItemColor: maincolor,
          onTap: _onItemTapped,
        ),
        // CurvedNavigationBar(
        //   index: ind,
        //   onTap: (selectedIndex) {
        //     setState(() {
        //       ind = selectedIndex;
        //     });
        //   },
        //   backgroundColor: Colors.transparent,
        //   color: Colors.red,
        //   height: 70,
        //   items: const [
        //     Icon(
        //       Icons.home,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.explore,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.add_box_outlined,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //     Icon(
        //       Icons.account_circle_outlined,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Widget getSelectedWidget(int index) {
    Widget widget = Home();
    switch (index) {
      case 0:
        widget = Home();
        break;

      case 1:
        widget = ProductListPage();
        break;

      case 2:
        widget = AddReview();
        break;

      default:
        widget = ProfilePage();
        break;
    }
    return widget;
  }
}
