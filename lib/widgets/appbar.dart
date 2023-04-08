import 'package:flutter/material.dart';

import '../account.dart';
import '../drawer.dart';

class HomeAppBAr extends StatelessWidget {
  const HomeAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              MYdrawer();
            },
            child: const Icon(
              Icons.sort,
              size: 30,
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 80, right: 25)),
          const Text(
            "Review It",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(left: 85, right: 10)),
          InkWell(
            onTap: () {
              Account();
            },
            child: const Icon(Icons.account_circle, size: 30),
          ),
        ],
      ),
    );
  }
}
