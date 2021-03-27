import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  String buttontxt;
  Mybutton({this.buttontxt});
  @override
  _MybuttonState createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 56,
      child: RaisedButton(
          onPressed: null,
          disabledColor: Colors.black,
          disabledTextColor: Colors.white,
          // elevation: 5.0,
          child: Text(
            widget.buttontxt,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          )),
    );
  }
}
