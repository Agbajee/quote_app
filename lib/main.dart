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
      home: const MyHomePage(title: 'My Quotes'),
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
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xffd6d6d6),
                ),
                alignment: Alignment.center,
                width: screenWidth,
                height: 300,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 220),
                child: Text(
                  'Quote of the day',
                  style: TextStyle(
                    color: Color(0xFF102027),
                    fontSize:22,
                    fontWeight: FontWeight.w400,
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFef6c00),
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.lightbulb),
      ),
    );
  }
}
