import 'package:caterer_study/api_file/get_user.dart';
import 'package:flutter/material.dart';
import 'package:caterer_study/body/from/form_material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:caterer_study/api_file/api_service.dart';
import 'dart:convert';

class Katalog extends StatefulWidget {
  @override
  _KatalogState createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  var users = new List<User>();

  _getUsers() {
    ApiService.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  // String coba = null;

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
                onPressed: () {}),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
        body: users.length == 0
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/empty_image.svg",
                        height: 250.0,
                        width: 250.0,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        "Ops! Class mu masih kosong",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10, bottom: 10),
                        child: Text(
                            "Tambahin class nya yuk biar ada daftar class punya kamu sendiri",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center),
                      ),
                      FlatButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              isDismissible: true,
                              builder: (BuildContext bc) {
                                return Form_Material();
                              });
                        },
                        color: Colors.green,
                        splashColor: Colors.green[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'Tambah Class',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              : Text("day")
            // : Text("data")
            // : ListView.builder(
            //     itemBuilder: (context, index) {
            //       return Text(users[index].email);
            //     },
            //     itemCount: users.length,
            //   )
              );
  }
}
