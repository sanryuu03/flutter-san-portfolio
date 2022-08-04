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
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Image.asset(
                  'images/boy.png',
                  width: 100,
                ),
                SizedBox(height: 10),
                Text(
                  'muhammad hasan'.capitalizeFirstofEach,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.offline_bolt),
                    Text('teknik sastra'.capitalizeFirstofEach),
                    Icon(Icons.flash_on_sharp),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                        bottom: Radius.circular(40),
                      )),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('skill'.capitalizeFirstofEach,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          SizedBox(width: 12),
                          Image.asset('images/laravel.png'),
                          Image.asset(
                            'images/mysql.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 100),
                          Text('see more'.capitalizeFirstofEach,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'kenapa aku membuat aplikasi ini ?'
                                .capitalizeFirstofEach,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 55.5),
                        child: Text(
                          'tentu saja karna ini tugas submission.\n ternyata aku memang tidak ada bakat dibidang seni. \n ingin jadi fullstack ternyata tidak semudah kubayangkan. \n\n bingung mau bikin apa lagi, hahaha'
                              .capitalizeFirstofEach,
                          style: TextStyle(
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
