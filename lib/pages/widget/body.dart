import 'package:flutter/material.dart';
import 'package:sampark/pages/model/firstdetail.dart';

Widget getBody(BuildContext context, BodyDetail bd) {
  return GestureDetector(
    child: Row(
      children: <Widget>[
        Container(
          height: 280,
          color: Colors.white,
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
                    padding: EdgeInsets.only(left: 15.0, right: 30, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 20,
                            width: 40,
                            color: Colors.white,
                            child: Center(
                              child: Text("OPEN",
                                  style: TextStyle(
                                      color: Colors.lightGreen, fontSize: 12)),
                            )),
                        Container(
                            height: 20,
                            width: 40,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.yellow[500],
                                ),
                                Text("4.5", style: TextStyle(fontSize: 12)),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Happy Bones"),
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
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      child: Center(
                          child: Text("Indian",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white))),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: 100,
                            height: 40,
                            margin: EdgeInsets.only(top: 10),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 45,
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.white),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/4.jpeg"),
                                              fit: BoxFit.fill),
                                          shape: BoxShape.circle)),
                                ),
                                Positioned(
                                  left: 30,
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.white),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/4.jpeg"),
                                              fit: BoxFit.fill),
                                          shape: BoxShape.circle)),
                                ),
                                Positioned(
                                  left: 15,
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.white),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/4.jpeg"),
                                              fit: BoxFit.fill),
                                          shape: BoxShape.circle)),
                                ),
                                Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/4.jpeg"),
                                            fit: BoxFit.fill),
                                        shape: BoxShape.circle))
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 10),
                child: Row(
                  children: <Widget>[Text("394,Broom St. New York")],
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10)
      ],
    ),
  );
}
