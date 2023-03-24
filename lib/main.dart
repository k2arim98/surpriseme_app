import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:surpriseme_app/screens/LogIn/loginPage.dart';
import 'package:surpriseme_app/screens/Register/registrationProvider.dart';
import 'package:surpriseme_app/screens/changePassword/changeProvider.dart';
import 'package:surpriseme_app/screens/intro/introProvider.dart';
import 'package:surpriseme_app/screens/LogIn/loginProvider.dart';
import 'package:provider/provider.dart';
import 'package:surpriseme_app/screens/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IntroProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegistrationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChangePasswordProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue[800],
          scaffoldBackgroundColor: Colors.blue[100],
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.green[50]),
        ),
        home: LoginPage(),
      ),
    ),
  );
}
