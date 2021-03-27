import 'package:flutter/material.dart';

class belt extends StatefulWidget {
  Color colors;
  belt({this.colors});
  @override
  _beltState createState() => _beltState();
}

class _beltState extends State<belt> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "belt",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: widget.colors,
        //  textAlign: TextAlign.left,
      ),
    );
  }
}
