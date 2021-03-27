import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class FifthScreen extends StatefulWidget {
  @override
  _FifthScreenState createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            getImage();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: _image == null
                                      ? AssetImage('assets/1.jpg')
                                      : FileImage(_image),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            height: 90,
                            width: 150,
                            child: Text(
                              "Upload\nProfile Picture",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ))),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Mybutton(
                  buttontxt: "Sign up Account",
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "Already have an Account?",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signin()));
                    },
                    child: Text(
                      "LOGIN >",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
