import 'package:flutter/material.dart';
import 'package:caterer_study/launcher.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'classroom',
      // theme: new ThemeData(
       
      // ),
      home: new LauncherPage(),
    );
  }
} 