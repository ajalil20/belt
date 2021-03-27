import 'package:belt/Screens/shared%20widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class SeventhScreen extends StatefulWidget {
  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
//OTP

  TextEditingController controller = TextEditingController(text: "");
  String thisText = "";
  int pinLength = 4;
  bool hasError = false;
  String errorMessage;

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
                  "OTP Sent!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Enter the 4-digit code sent to you at +6285 993 493",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child:
                      Text(thisText, style: Theme.of(context).textTheme.title),
                ),
                Container(
                  height: 100.0,
                  child: GestureDetector(
                    child: PinCodeTextField(
                      autofocus: true,
                      controller: controller,
                      hideCharacter: true,
                      highlight: true,
                      //   highlightColor: Colors.blue,
                      //defaultBorderColor: Colors.black,
                      hasTextBorderColor: Colors.green,
                      //  highlightPinBoxColor: Colors.orange,
                      maxLength: 4,
                      hasError: hasError,
                      maskCharacter: "*",
                      onTextChanged: (text) {
                        setState(() {
                          hasError = false;
                        });
                      },
                      onDone: (text) {
                        print("DONE $text");
                        print("DONE CONTROLLER ${controller.text}");
                      },
                      pinBoxWidth: 50,
                      pinBoxHeight: 64,
                      hasUnderline: true,
                      wrapAlignment: WrapAlignment.spaceAround,
                      pinBoxDecoration:
                          ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                      pinTextStyle: TextStyle(fontSize: 22.0),
                      pinTextAnimatedSwitcherTransition:
                          ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                      pinTextAnimatedSwitcherDuration:
                          Duration(milliseconds: 300),
//                    highlightAnimation: true,
                      highlightAnimationBeginColor: Colors.black,
                      highlightAnimationEndColor: Colors.white12,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Mybutton(
                  buttontxt: "Resend OTP",
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "I dont't receive code",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
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
