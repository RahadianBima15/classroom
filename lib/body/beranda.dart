import 'package:flutter/material.dart';
import 'package:caterer_study/body/home.dart';
import 'package:caterer_study/body/profil.dart';
import 'package:caterer_study/body/katalog.dart';
import 'package:caterer_study/body/schadule.dart';
import 'package:flutter/cupertino.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Home(),
    Katalog(),
    Schedule(),
    Profil(),
  ];

  void noTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // TabController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.green,
          primaryColor: Colors.white
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: noTappedBar,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              title: Text("Schedule"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_shared),
              title: Text("Classes"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              title: Text("Materials"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("Profil"),
            ),
          ],
        ),
      ),
    );
  }
}
