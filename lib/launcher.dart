import 'package:flutter/material.dart';
import 'dart:async';
import 'package:caterer_study/login.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  void initState() {
    super.initState();
    startLaunching();
  }

  Future startLaunching() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Login();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff2BB900),
        child: Center(
          child: SvgPicture.asset(
            "assets/child1.svg",
            height: 200.0,
            width: 200.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
