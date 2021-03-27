import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentfield = 2;

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
                  "Sign Up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                    onTap: () {
                      setState(() {
                        currentfield = 1;
                      });
                    },
                    //   autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      suffixIcon: Icon(
                        Icons.email,
                        color: currentfield == 1 ? Colors.red : Colors.grey,
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
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextField(
                    onTap: () {
                      setState(() {
                        currentfield = 0;
                      });
                    },
                    //   autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Alternate email',
                      suffixIcon: Icon(
                        Icons.email,
                        //   color: Colors.grey,
                        color: currentfield == 0 ? Colors.red : Colors.grey,
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
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Mybutton(
                  buttontxt: "Continue",
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "Already have an Account?",
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
                      "LOGIN >",
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
