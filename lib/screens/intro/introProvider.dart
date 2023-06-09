import 'dart:async';

import 'package:surpriseme_app/screens/intro/introPage.dart';
import 'package:surpriseme_app/screens/LogIn/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier {
  void introPageShar() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('introPage', true);
    notifyListeners();
  }

  Future<bool?> readIntroPageShar() async {
    final prefs = await SharedPreferences.getInstance();
    bool? check = prefs.getBool('introPage');
    return check;
  }

  void check(BuildContext context) async {
    var check = await readIntroPageShar();
    Timer(
      Duration(seconds: 3),
      () {
        if (check == true) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const IntroPage(),
            ),
          );
        }
      },
    );
  }
}
