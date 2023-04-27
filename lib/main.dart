import 'package:flutter/material.dart';
import 'package:untitled/SCREENS/LoginScreen/AuthScreen.dart';
import 'package:untitled/SCREENS/WELCOME/welcome_screen.dart';
import 'package:untitled/SCREENS/home/HOME.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/sinup/sinup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF1E6FF),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6F35A5)),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6F35A5  )),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF1E6FF)),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: welcomeScreen(),
      routes:{
        'login' : (context) => AuthScreen(),
        'homeimge' : (context) => home(),
        'sinup' : (context) => sinup(),

      },
    );
  }
}
