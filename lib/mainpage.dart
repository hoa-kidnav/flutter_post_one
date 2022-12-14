import 'package:flutter/material.dart';

import 'helper.dart';
import 'myaccount.dart';
import 'product.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Container(),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            createBottomNaviItem("Home", Icons.home, () {}),
            createBottomNaviItem("Products", Icons.library_books, () {
              Helper.newPage(context, ProductPage());
            }),
            createBottomNaviItem("My account", Icons.account_box, () {
              Helper.getProfile(context);
            }),
          ],
        ),
      ),
    );
  }

  Widget createBottomNaviItem(String title, IconData icon, Function() press) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
