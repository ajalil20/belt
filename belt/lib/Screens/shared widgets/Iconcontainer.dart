import 'package:flutter/material.dart';

class Iconcontainer extends StatefulWidget {
  IconData iconcontainer;
  Color iconcolor;
  Color boxcolor;
  Iconcontainer({this.iconcontainer, this.iconcolor, this.boxcolor});

  @override
  _IconcontainerState createState() => _IconcontainerState();
}

class _IconcontainerState extends State<Iconcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: widget.boxcolor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Icon(
        widget.iconcontainer,
        color: widget.iconcolor,
      ),
    );
  }
}
