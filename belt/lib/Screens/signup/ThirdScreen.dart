import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool showpassword = true;
  bool showpassword2 = true;
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
                  "Set Password",
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
                      //   autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Visibility(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                showpassword = !showpassword;
                              });
                            },
                            child: showpassword == true
                                ? Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: Colors.grey,
                                  ),
                          ),
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

                      obscureText: showpassword == true ? false : true,
                      enableSuggestions: false,
                      autocorrect: false,
                    )),
                Container(
                  width: 400,
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextField(
                    //   autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showpassword2 = !showpassword2;
                          });
                        },
                        child: showpassword2 == true
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
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
                    obscureText: showpassword2 == true ? false : true,
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
