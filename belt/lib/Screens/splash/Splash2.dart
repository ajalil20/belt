import 'package:belt/Screens/shared%20widgets/belt.dart';
import 'package:belt/Screens/shared%20widgets/colorfade.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: FadingEffect(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/2.jpg',
            ),
            fit: BoxFit.cover,
          ),

          //gradient: LinearGradient(
          /// colors: [Colors.green, Colors.red],
          ///  begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      belt(
                        colors: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Best reservation anytime you want",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Full service reservation",
                        style: TextStyle(fontSize: 16, color: Colors.red[900]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
