import 'package:flutter/material.dart';
import 'package:flutter_san_portfolio/CapitalizedStringExtension/CapitalizedStringExtension.dart';

class Skill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('skill san portfolio 2022'.capitalizeFirstofEach),
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
                  height: 450,
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
                      Text('kenapa aku belajar laravel ?'.capitalizeFirstofEach,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          SizedBox(width: 12),
                          Image.asset('images/laravel.png'),
                          Text('laravel'.capitalizeFirstofEach,
                              style: TextStyle(
                                  color: Colors.red[200],
                                  fontWeight: FontWeight.w500)),
                          SizedBox(width: 100),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 45.5),
                        child: Text(
                          'aku belajar backend karna ku rasa sangat sulit untuk belajar frontend.'
                              .capitalizeFirstofEach,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 50, width: 20),
                          Text(
                            'apa yang sudah dan yang sedang ku pelajari ?'
                                .capitalizeFirstofEach,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        'klik tombol favorite dibawah ini untuk kepo xixixi'
                            .capitalizeFirstofEach,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w500),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 100),
        IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
             size: 50.0,
          ),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
        SizedBox(width: 10),
        if (isFavorite) Text("ya saya kepo"),
      ],
    );
  }
}
