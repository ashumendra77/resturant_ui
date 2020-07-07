import 'package:flutter/material.dart';
import 'package:sampark/pages/model/review.dart';
import 'package:sampark/pages/widget/bottombar.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  Widget getReview(ReviewModel rm) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(backgroundImage: AssetImage(rm.image)),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(rm.name),
                    Text(
                      rm.comm,style: TextStyle(color:Colors.grey,fontSize:12),
                    )
                  ],
                ),
              ),
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
          
          SizedBox(height: 15)
        ],
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
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 100),
                  Text("Reviews", style: TextStyle(fontSize: 20))
                ],
              ),
              SizedBox(height:15),
              Column(
                  children: reviewlist
                      .toList()
                      .asMap()
                      .entries
                      .map((MapEntry map) => getReview(map.value))
                      .toList())
            ],
          ),
        ),
      ),
    );
  }
}
