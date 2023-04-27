import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:untitled/SCREENS/components/background.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(

          child: Center(

              child: ListView(
                children: [
                  SizedBox(height: 1,),
                  SizedBox(
                    height: 200.0,
                    width: double.infinity,
                    child: Carousel(
                      dotSize: 6.0,
                      dotSpacing: 15.0,
                      dotPosition: DotPosition.bottomCenter,
                      images: [
                        Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
                        Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
                        Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
                        Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
                        Image.asset('assets/images/5.jpg', fit: BoxFit.cover),
                        Image.asset('assets/images/6.jpg', fit: BoxFit.cover),
                      ],
                    ),
                  )
                ],
              )
          ),

      ),
    );
  }
}
