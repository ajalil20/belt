import 'package:belt/Screens/Maps/maps.dart';
import 'package:belt/Screens/shared%20widgets/Iconcontainer.dart';
import 'package:belt/Screens/shared%20widgets/belt.dart';
import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:belt/Screens/shared%20widgets/headings.dart';
import 'package:belt/Screens/shared%20widgets/textfield.dart';
import 'package:flutter/material.dart';

class Pickup extends StatefulWidget {
  @override
  _PickupState createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    var dsize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: dsize.height,
        width: dsize.width,
        child: Stack(
          children: <Widget>[
            Container(
              // Yaha Map aye ga
              child: Maps(),
              // color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: belt(
                  colors: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30, top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Iconcontainer(
                      iconcontainer: Icons.chevron_left_sharp,
                      boxcolor: Colors.white,
                      iconcolor: Colors.grey[900],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30, top: 30),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/boy.png'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80,
                    right: 30,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Positioned(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Transform.rotate(
                        angle: 320 * 3.142 / 180,
                        child: (Iconcontainer(
                          iconcontainer: Icons.navigation,
                          boxcolor: Colors.red[900],
                          iconcolor: Colors.white,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 30,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Positioned(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Iconcontainer(
                          iconcontainer: Icons.location_searching,
                          boxcolor: Colors.white,
                          iconcolor: Colors.grey[900],
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 90.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.54,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: heading(
                                      headings: "Where we go?",
                                    ),
                                  ),
                                ),
                                Icon(Icons.clear_rounded)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Mytextfield(
                                txtvalue: 'Use current Location',
                                myicon: Icons.mic,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Mybutton(
                                buttontxt: 'Set Pickup',
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.car_repair),
                          Icon(Icons.vpn_key),
                          Icon(Icons.location_on),
                          Icon(Icons.supervised_user_circle),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
