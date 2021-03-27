import 'package:belt/Screens/signin.dart';
import 'package:belt/Screens/signup/FifthScreen.dart';
import 'package:belt/Screens/signup/FourthScreen.dart';
import 'package:belt/Screens/signup/SecondScreen.dart';
import 'package:belt/Screens/signup/SeventhScreen.dart';
import 'package:belt/Screens/signup/SixthScreen.dart';
import 'package:belt/Screens/signup/ThirdScreen.dart';
import 'package:flutter/material.dart';

import 'FirstScreen.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 6,
            left: 8,
            right: 8,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color: Colors.black,
                      size: 38.0,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signin()));
                    },
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip Here",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PageView(
            children: [
              FirstScreen(
                heading: "Sign Up",
                subheading: "Require information to account creations",
                txtalready: "Already have an Account?",
                txtlogin: "LOGIN >",
              ),
              SecondScreen(),
              ThirdScreen(),
              FourthScreen(),
              FifthScreen(),
              SixthScreen(),
              SeventhScreen(),
            ],
          ),
        ],
      )),
    );
  }
}
