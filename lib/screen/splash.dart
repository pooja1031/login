import 'package:flutter/material.dart';
import 'package:sample_project/screen/home.dart';
import 'package:sample_project/screen/login.dart';

import '../main.dart';

class ScreenSplash extends StatefulWidget {
  ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  String name = 'welcome';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 163, 30),
      body: SafeArea(
        child: Center(
          child: Center(
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 233, 217, 217),
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    Future.delayed(Duration(seconds: 10));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => ScreenLogin()),
    );
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    }
  }
}
