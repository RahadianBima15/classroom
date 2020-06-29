import 'package:flutter/material.dart';

class Katalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: TextField(
            decoration: InputDecoration(
                hintText: "Search Class",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.white))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Text("Classes"),
      ),
    );
  }
}
