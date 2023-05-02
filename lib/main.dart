import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('ASK ME ANYTHING!'),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed:(){
        setState(() {
        ballnumber=Random().nextInt(5)+1;
        });
      },
      child: Image.asset('images/ball$ballnumber')),
    );
  }
}
