import 'package:flutter/material.dart';
import 'package:sampark/pages/model/notify.dart';
import 'package:sampark/pages/widget/bottombar.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Widget getNotify(NotificationModel nm) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(backgroundImage: AssetImage("assets/download.jpeg")),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(nm.name),
                    Text(
                      nm.comm,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              SizedBox(width: 10),
              Text(nm.time)
            ],
          ),
          SizedBox(height: 10)
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
          padding:  EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            Text(
              "Notifications",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height:15),
            Column(
                children: noticelist
                    .toList()
                    .asMap()
                    .entries
                    .map((MapEntry map) => getNotify(map.value))
                    .toList()),
          ]),
        ),
      ),
    );
  }
}
