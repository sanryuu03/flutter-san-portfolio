import 'package:flutter/material.dart';
import 'package:flutter_san_portfolio/CapitalizedStringExtension/CapitalizedStringExtension.dart';
// import 'package:flutter_san_portfolio/skill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'san portfolio 2022'.capitalizeFirstofEach,
      theme: ThemeData(),
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('san portfolio 2022'.capitalizeFirstofEach),
        ),
        body: SafeArea(
          child: 
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  SizedBox(
                    width: 100,
                    child: Image.asset('images/boy.png'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  SizedBox(
                    child: Text(
                      'muhammad hasan'.capitalizeFirstofEach,
                    style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    
                  ),
                  Row(children: [
                  Icon(Icons.offline_bolt),
                  Text('teknik sastra'.capitalizeFirstofEach),
                  Icon(Icons.flash_on_sharp),
                  ],)
                ],
              ),
            ],
          ),
        ));
  }
}
