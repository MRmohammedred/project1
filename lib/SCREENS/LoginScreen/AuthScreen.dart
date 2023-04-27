import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/SCREENS/components/AuthForm.dart';
import 'package:untitled/SCREENS/components/background.dart';
import 'package:untitled/SCREENS/components/body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("WELCOME TO EDU",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
          SvgPicture.asset('assets/icons/chat.svg',
            height: size.height * 0.4,
          ),
          AuthForm(),
        ],
      ),
      ),
      ),
    );
  }
}
