import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SixthScreen extends StatefulWidget {
  @override
  _SixthScreenState createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
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
                  "Forgot Password",
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Require information to account creations",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextField(
                    //   autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide:
                            BorderSide(color: Colors.grey[100], width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                    style: TextStyle(
                        //    fontSize: 20,
                        ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                    width: 336,
                    height: 56,
                    child: RaisedButton(
                        onPressed: null,
                        disabledColor: Colors.black,
                        disabledTextColor: Colors.white,
                        // elevation: 5.0,
                        child: Text(
                          "Send Link",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        )),
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
