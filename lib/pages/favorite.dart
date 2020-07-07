import 'package:flutter/material.dart';
import 'package:sampark/pages/widget/bottombar.dart';

import 'model/firstdetail.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  Widget getFavourite(BodyDetail bd) {
    return GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 280,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: Offset(-4, 4),
                        color: Colors.grey[300],
                        blurRadius: 10,
                        spreadRadius: 5)
                  ]),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage("assets/download.jpeg"),
                            fit: BoxFit.fill,
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(),
                                Container(
                                    height: 20,
                                    width: 40,
                                    alignment: Alignment.topRight,
                                    color: Colors.white,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.yellow[500],
                                        ),
                                        Text("4.5",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text("Happy Bones"),
                            SizedBox(width: 10),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orangeAccent),
                              child: Center(
                                  child: Text("Indian",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white))),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orangeAccent),
                              child: Center(
                                  child: Text("12km",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 8),
                        child: Row(
                          children: <Widget>[Text("394,Broom St. New York")],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 60,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 5)
                    ], color: Colors.white, shape: BoxShape.circle),
                    child:
                        Center(child: Icon(Icons.bookmark, color: Colors.blue)),
                  ),
                )
              ],
            ),
            SizedBox(height: 20)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Icon(Icons.add),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: getBottomBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  Text(
                    "My Favourite",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.search)
                ],
              ),
              SizedBox(height: 15),
              Column(
                  children:
                      bodylist.toList().asMap().entries.map((MapEntry map) {
                return getFavourite(map.value);
              }).toList()),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
