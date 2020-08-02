import 'package:flutter/material.dart';
import 'package:caterer_study/launcher.dart';
// import 'package:caterer_study/api_file/api_service.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ApiService().getUsers().then((value) => print("value: $value"));

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'classroom',
      // theme: new ThemeData(

      // ),
      home: new LauncherPage(),
    );
  }
}
