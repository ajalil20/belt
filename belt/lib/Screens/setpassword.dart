import 'package:flutter/material.dart';

class setpassword extends StatefulWidget {
  @override
  _setpasswordState createState() => _setpasswordState();
}

class _setpasswordState extends State<setpassword> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 38.0,
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Skip Here",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Set Password",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                            visible: showpass,
                            child: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.grey[100], width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
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
                        //   autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.grey[100], width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
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
                    Container(
                      width: 336,
                      height: 56,
                      child: RaisedButton(
                          onPressed: null,
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          // elevation: 5.0,
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          )),
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
                      child: Text(
                        "LOGIN >",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
