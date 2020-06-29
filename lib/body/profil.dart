import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  bool togleValue = false;
  
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
                                  'https://kln.imgix.net/stage/kulina.png'),
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
                                "Nama Institusi",
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
                        Icon(
                          Icons.list,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Profil Detail"),
                        ),
                        Expanded(child: SizedBox()),
                        AnimatedContainer(duration: Duration(milliseconds: 1000),
                        height: 40.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: togleValue ? Colors.greenAccent[100]: Colors.redAccent[100].withOpacity(0.5)
                        ),),
                        
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
                          Icons.list,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Profil Detail"),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
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
                            style: TextStyle(color: Colors.red),
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
