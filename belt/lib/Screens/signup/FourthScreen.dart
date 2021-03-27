import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:belt/Screens/signin.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: GestureDetector(
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/boy.png'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: GestureDetector(
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/girl.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Mybutton(
                  buttontxt: "Select Gender",
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
