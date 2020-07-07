import 'package:flutter/material.dart';
import 'package:sampark/pages/favorite.dart';
import 'package:sampark/pages/first_page.dart';

import '../notification.dart';
import '../profile.dart';


Widget getBottomBar(BuildContext context) {
  return Container(
    height: 70,
    width: MediaQuery.of(context).size.width,
    child: BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Icon(
                Icons.home,
              )),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoritePage()));
              },
              child: Icon(Icons.turned_in_not)),
          SizedBox.shrink(),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              child: Icon(Icons.notifications)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
              child: Icon(Icons.person_outline))
        ],
      ),
    ),
  );
}
