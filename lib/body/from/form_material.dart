// import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Form_Material extends StatefulWidget {
  @override
  _Form_MaterialState createState() => _Form_MaterialState();
}

class _Form_MaterialState extends State<Form_Material> {
  File _image;

  Future getImage(ImageSource src) async {
    var image = await ImagePicker.pickImage(source: src);

    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                // Text("Form untuk image"),
                Column(
                  children: <Widget>[
                    _image == null
                        ? SizedBox(
                          width: 350,
                          height: 95,
                          child: RaisedButton(
                            // color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.add_a_photo),
                                Text("  Add Image")
                              ],
                            ),
                              // icon: Icon(Icons.add_a_photo),
                              onPressed: () {
                                // getImage();
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        title: Text("Upload Image"),
                                        children: <Widget>[
                                          SimpleDialogOption(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                              getImage(ImageSource.gallery);
                                            },
                                            child: Text("Pick From Galerry"),
                                          ),
                                          SimpleDialogOption(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                              getImage(ImageSource.camera);
                                            },
                                            child: Text("Take A New Pict"),
                                          )
                                        ],
                                      );
                                    });
                              },
                            ),
                        )
                        : Image.file(_image, width: 350, height: 95, fit: BoxFit.cover,) 
                        
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Nama Class",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  height: 40.0,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Class Name',
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Detail Class",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  height: 40.0,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Detail Class',
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                    width: 350.0,
                    height: 40.0,
                    child: RaisedButton(
                        color: Colors.green,
                        onPressed: () {
                          // Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Beranda()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Simpan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ))),
              ],
            ))
      ],
    );
  }
}
