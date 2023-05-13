import 'package:flutter/material.dart';
import 'package:sample_project/screen/home.dart';
import 'package:sample_project/screen/splash.dart';

const SAVE_KEY_NAME ='UserLoggedIn';



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
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenSplash(),
      );
  }
}