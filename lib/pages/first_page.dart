import 'package:flutter/material.dart';
import 'package:sampark/pages/model/firstdetail.dart';
import 'package:sampark/pages/widget/body.dart';
import 'package:sampark/pages/widget/bottombar.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> countryname = [
    "Indian",
    "Chinese",
    "Mexican",
  ];

  List<String> friendlist = [
    "assets/4.jpeg",
    "assets/4.jpeg",
    "assets/4.jpeg",
    "assets/4.jpeg",
    "assets/4.jpeg",
    "assets/4.jpeg",
    "assets/4.jpeg"
  ];

  Widget getFriends(int index) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: <Widget>[
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(friendlist[index]), fit: BoxFit.fill),
                  shape: BoxShape.circle)),
          SizedBox(width: 10)
        ],
      ),
    );
  }

  Widget getCategory(int index) {
    return Row(
      children: <Widget>[
        Container(
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              countryname[index],
              style: TextStyle(color: Colors.white),
            ))),
        SizedBox(width: 20)
      ],
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 250,
                        child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Find Resturent")),
                      ),
                      Icon(Icons.tune)
                    ],
                  )),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Trending Resturents",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all(45)",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                  height: 280,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(-4, 4),
                        color: Colors.grey[300],
                        blurRadius: 10,
                        spreadRadius: 5)
                  ]),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:
                          bodylist.toList().asMap().entries.map((MapEntry map) {
                        return getBody(context, map.value);
                      }).toList())),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Category",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all(9)",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: countryname
                        .toList()
                        .asMap()
                        .entries
                        .map((MapEntry map) => getCategory(map.key))
                        .toList()),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Friends",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all(9)",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: friendlist
                        .toList()
                        .asMap()
                        .entries
                        .map((MapEntry map) => getFriends(map.key))
                        .toList()),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      )),
    );
  }
}
