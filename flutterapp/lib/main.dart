import 'package:flutter/material.dart';
import 'package:flutterapp/category_screen.dart';
import 'package:flutterapp/login_screen.dart';
import 'package:flutterapp/person_list.dart';
import 'package:flutterapp/person_service.dart';
import 'package:flutterapp/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Project',
      home: SpalashScreen(),
    );
  }
}
