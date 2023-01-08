// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Quotes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Inspirational Quotes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List quotes = [
    'God deh',
    'No matter how short you are, if you get outside you will see the sky.',
    'Even A Yahoo can Manufacture Chips that Controls Dadauda',
    'Just Dey Play'
  ];
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF101f27),
        centerTitle: true,
        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: 24,
        ),
        title: Text(widget.title,
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  color: Color(0xffd6d6d6),
                ),
                alignment: Alignment.center,
                width: screenWidth,
                height: 300,
                padding: EdgeInsets.fromLTRB(50.0, 5.0, 70.0, 5.0),
                child: Text(
                  '"${quotes[_index % quotes.length]}"',
                  style: TextStyle(
                    color: Color(0xFF102027),
                    fontSize:22,
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFef6c00),
        onPressed: _showQuote,
        tooltip: 'Increment',
        child: const Icon(Icons.lightbulb),
      ),
    );
  }

  void _showQuote() {
    setState((){
      _index += 1;
    });

  }
}
