import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,

        title: const Text('Ask Me  Anything..',style: TextStyle(
          letterSpacing: 5,
        ),),
      ),
      body: MyApp(),
    ),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber =1;
  void ball(){
    setState(() {
      ballNumber= Random().nextInt(5) +1;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ball();
        },

        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}