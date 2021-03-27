import 'package:belt/Screens/shared%20widgets/textfield.dart';
import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  String heading, subheading, txtalready, txtlogin;
  FirstScreen({this.heading, this.subheading, this.txtalready, this.txtlogin});
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.heading,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.subheading,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Mytextfield(
                  txtvalue: "First Name",
                ),
                Mytextfield(txtvalue: "Last Name"),
                SizedBox(
                  height: 10,
                ),
                Mybutton(buttontxt: "Continue"),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    widget.txtalready,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signin()));
                    },
                    child: Text(
                      widget.txtlogin,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
