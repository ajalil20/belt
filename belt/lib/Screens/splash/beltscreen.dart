import 'package:belt/Screens/shared%20widgets/belt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class beltscreen extends StatefulWidget {
  @override
  _beltscreenState createState() => _beltscreenState();
}

class _beltscreenState extends State<beltscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: belt(
            colors: Colors.red,
          ),
        ),
      ),
    );
  }
}
