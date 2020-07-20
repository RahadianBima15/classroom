import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool isSwitched = false;

  toggleButton() {
    setState(() {
      isSwitched = !isSwitched;
      print(isSwitched);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            "Profil",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://kln.imgix.net/stage/community-20200207130812.jpg'),
                              maxRadius: 25.0,
                            ),
                            Positioned(
                              right: 0.0,
                              top: 25.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://lh3.googleusercontent.com/a-/AAuE7mDo9X8K6ERYHNB0hZn2JWxgMQk1mOdkmbiEudjP=s50'),
                                maxRadius: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "PT. Pembangunan Perumahan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                "Login sebagai: Rahadian Bima",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.notifications, color: Colors.green),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Ijinkan notifikasi"),
                        ),
                        Expanded(child: SizedBox()),
                        // Transform.scale(
                        // scale: 1.2,
                        FlutterSwitch(
                          height: 30.0,
                          width: 50.0,
                          padding: 0.25,
                          toggleSize: 30.0,
                          // showOnOff: true,
                          value: isSwitched,
                          onToggle: (value) {
                            toggleButton();
                          },
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.power_settings_new,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Logout",
                            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
