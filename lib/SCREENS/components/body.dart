import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/SCREENS/components/background.dart';
import 'package:untitled/SCREENS/components/button.dart';
import 'package:untitled/constants.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
            SizedBox(height: 20,),

            SvgPicture.asset('assets/icons/chat.svg',
              height: size.height * 0.4,
            ),
            SizedBox(height: 20,),
            Button(
              text: ' start',
              textColor: kPrimaryLightColor,
              bgColor: kPrimaryColor,
              onPressed: (){
                Navigator.of(context).pushNamed("login");
              },
            ),
            SizedBox(height: 20,),

           /*Button(
              text: 'lo',
              textColor: kPrimaryColor,
              bgColor: kPrimaryLightColor,
              onPressed: (){
                Navigator.of(context).pushNamed("homeimge");

              },
            ),*/
          ],
        ),
      ),

    );
  }
}
