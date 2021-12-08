import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBoll(),
      ),
    );

class MagicBoll extends StatefulWidget {
  @override
  _MagicBollState createState() => _MagicBollState();
}

class _MagicBollState extends State<MagicBoll> {
  void _genAnswer() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  var num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: _genAnswer,
          child: Image.asset('images/ball$num.png'),
        ),
      ),
    );
  }
}
