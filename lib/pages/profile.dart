import 'package:flutter/material.dart';
import 'package:sampark/pages/review.dart';
// import 'package:sampark/pages/widget/body.dart';
import 'package:sampark/pages/widget/bottombar.dart';

import 'model/firstdetail.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int select = 0;
  List<String> menulist = ["Edit Profile", "Setting"];
  Widget getmenu(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(
          onTap: () {
            select = index;
            setState(() {});
          },
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
                color: select == index ? Colors.blue : Colors.white),
            child: Center(
                child: Text(
              menulist[index],
              style: TextStyle(
                  color: select == index ? Colors.white : Colors.grey),
            )),
          ),
        ),
      ],
    );
  }

  Widget getActivity(BodyDetail bd) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 280,
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
                              Text("4.5", style: TextStyle(fontSize: 12)),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(flex: 2, child: Text("Happy Bones")),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orangeAccent),
                    child: Center(
                        child: Text("Indian",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white))),
                  ),
                ),
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 80,
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
                                        color: Colors.blue,
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
                                        color: Colors.blue,
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
                                        color: Colors.blue,
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
                                      color: Colors.blue,
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
                ),
                Icon(Icons.more_vert),
              ],
            ),
            Row(
              children: <Widget>[Text("394,Broom St. New York")],
            )
          ],
        ),
      ),
    );
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
              Text("My Profile",style: TextStyle(fontSize: 20),),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/4.jpeg"),
                        fit: BoxFit.fill)),
              ),
              Text("Jhon Cema"),
              Text(
                "jhonwilliam@gmail.com",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("206"),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReviewPage()));
                          },
                          child: Text("Review"))
                    ],
                  ),
                  Column(
                    children: <Widget>[Text("12k"), Text("Followers")],
                  ),
                  Column(
                    children: <Widget>[Text("100"), Text("Following")],
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: menulist
                      .toList()
                      .asMap()
                      .entries
                      .map((MapEntry map) => getmenu(map.key))
                      .toList()),
              Divider(),
              Column(
                  children:
                      bodylist.toList().asMap().entries.map((MapEntry map) {
                return getActivity(map.value);
              }).toList())
            ],
          ),
        ),
      ),
    );
  }
}
