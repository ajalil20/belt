import 'package:flutter/material.dart';

class Mytextfield extends StatefulWidget {
  String txtvalue;
  IconData myicon;
  int currentfield;
  bool highlight;
  // bool nonhightlight;

  Mytextfield(
      {this.txtvalue, this.myicon, this.currentfield, this.highlight = true});
  @override
  _MytextfieldState createState() => _MytextfieldState();
}

class _MytextfieldState extends State<Mytextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.highlight = !widget.highlight;
            print(widget.highlight);
          });
        },
        child: TextField(
          //   autocorrect: true,
          decoration: InputDecoration(
            hintText: widget.txtvalue,
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.grey[100], width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            // suffix: GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       widget.highlight = !widget.highlight;
            //       print(widget.highlight);
            //     });

            //   },
            // ),
            // suffixIcon: Icon(
            //   //icon:Icons.widget.myicon,
            //   widget.myicon,
            //   color: widget.currentfield == 1 ? Colors.red : Colors.grey,
            // ),
            suffixIcon: Icon(
              //icon:Icons.widget.myicon,
              widget.myicon,
              color: widget.highlight == true ? Colors.red : Colors.grey,
            ),
          ),
          style: TextStyle(
              //    fontSize: 20,
              ),

          // onTap: () {
          //   setState(() {
          //     widget.currentfield = 1;
          //   });
          // },

          // onEditingComplete:
        ),
      ),
    );
  }
}
