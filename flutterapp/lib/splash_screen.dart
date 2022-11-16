import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/category_screen.dart';
import 'package:flutterapp/login_screen.dart';
import 'package:lottie/lottie.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({super.key});

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 241, 238, 238)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: Colors.white,
                      //   radius: 50,
                      //   child: Icon(
                      //     Icons.shopping_cart,
                      //     color: Colors.greenAccent,
                      //     size: 50.0,
                      //   ),
                      // ),
                      // Lottie.asset(
                      //   '',
                      //   repeat: false,
                      //   height: 250,
                      // ),

                      Text(
                        "Multi Purpose Hiring ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Lottie.asset(
                        './images/search.json',
                        repeat: true,
                        height: 500,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
