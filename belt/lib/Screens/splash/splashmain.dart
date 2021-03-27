import 'package:belt/Screens/example.dart';
import 'package:belt/Screens/signin.dart';
import 'package:belt/Screens/splash/Splash2.dart';
import 'package:belt/Screens/splash/Splash3.dart';
import 'package:belt/Screens/splash/beltscreen.dart';
import 'package:belt/Screens/splash/splash1.dart';
import 'package:flutter/material.dart';

class Splashscreen1 extends StatefulWidget {
  @override
  _Splashscreen1State createState() => _Splashscreen1State();
}

class _Splashscreen1State extends State<Splashscreen1> {
  int currentdot = 0;
  String screennum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (val) {
                currentdot = val;
                setState(() {});
              },
              children: [
                Splash1(),
                Splash2(),
                Splash3(),
                Example(),
              ],
            ),
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
                    IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                      ),
                      color: Colors.white,
                      iconSize: 38.0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => beltscreen()));
                      },
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signin()));
                        },
                        child: Text(
                          "Skip Here",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.925,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: currentdot == 0 ? Colors.red : Colors.grey,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.circle,
                    color: currentdot == 1 ? Colors.red : Colors.grey,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  /*         Text(
                    "3",
                    style: TextStyle(
                      color: currentdot == 2 ? Colors.red : Colors.grey,
                    ),
                  ),
           */
                  Icon(
                    Icons.circle,
                    color: currentdot == 2 ? Colors.red : Colors.grey,
                    size: 10.0,
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
