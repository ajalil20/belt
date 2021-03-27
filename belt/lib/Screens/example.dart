import 'package:belt/Screens/shared%20widgets/textfield.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Mytextfield(
              txtvalue: 'hinttextha ye',
              myicon: Icons.arrow_drop_down,
            ),
            Mytextfield(
              txtvalue: 'dosrifield ha ye',
              myicon: Icons.arrow_back,
              currentfield: 1,
            )
          ],
        ),
      ),
    );
  }
}
