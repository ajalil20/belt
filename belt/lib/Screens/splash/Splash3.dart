import 'package:belt/Screens/shared%20widgets/belt.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatefulWidget {
  @override
  _Splash3State createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/3.jpg',
          ),
          fit: BoxFit.cover,
        ),
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
                      "100+ Branch locations",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You can picking a lot's location",
                      style: TextStyle(fontSize: 16, color: Colors.red[900]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
