import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class heading extends StatefulWidget {
  String headings;
  heading({this.headings});
  @override
  _headingState createState() => _headingState();
}

class _headingState extends State<heading> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.headings,
      style: GoogleFonts.dmSans(
        textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
