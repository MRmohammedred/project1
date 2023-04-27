import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/SCREENS/components/AuthForm.dart';
import 'package:untitled/SCREENS/components/background.dart';
import 'package:untitled/services/auth.dart';

import '../SCREENS/components/button.dart';
import '../SCREENS/components/ridio.dart';
import '../constants.dart';
enum gender {male ,famle}

class sinup extends StatelessWidget {
  AuthBase authBase = AuthBase();
  final _formkey = GlobalKey<FormState>();
  String _email="" ,_password=""  ,_fname="",_sname="",_lname="" ,_age="";
  late int _number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("WELCOME TO EDU",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
                SvgPicture.asset('assets/icons/chat.svg',
                 //* height: size.height * 0.4,
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    TextFormField(
                      onChanged:  (value) => _email=value ,
                      validator: (value){
                        return value!.length < 10 ? 'enter vaild email' : null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your emil',labelStyle: TextStyle(color:Color (0xFF6F35A5)),
                        hintText: 'ex: test@gmail.com',

                      ),
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      onChanged:  (value) => _password=value ,
                      validator: (value){
                        return value!.length < 8 ? 'complete the password' : null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your password',labelStyle: TextStyle(color:Color (0xFF6F35A5)),
                        hintText: '***********',

                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      onChanged:  (value) => _fname=value ,
                      decoration: InputDecoration(
                        labelText: 'Enter your first name',labelStyle: TextStyle(color:Color (0xFF6F35A5)),


                      ),
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      onChanged:  (value) => _sname=value ,
                      decoration: InputDecoration(
                        labelText: 'Enter your middile name',labelStyle: TextStyle(color:Color (0xFF6F35A5)),


                      ),
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      onChanged:  (value) => _lname=value ,
                      decoration: InputDecoration(

                        labelText: 'Enter your last name',labelStyle: TextStyle(color:Color (0xFF6F35A5)),


                      ),
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      validator: (value){
                        onChanged:  (value) => _number=value;
                        return value!.length == 9 ? 'enter vaild number' : null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your phone number',labelStyle: TextStyle(color:Color (0xFF6F35A5)),
                        hintText: '7********           ',

                      ),
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      onChanged:  (value) => _age=value ,
                      decoration: InputDecoration(
                        labelText: 'Enter your age',labelStyle: TextStyle(color:Color (0xFF6F35A5)),
                        hintText: '00',

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                GenderRadio(),
                SizedBox(height: 20,),
                Button(
                    text: 'sinup',
                    onPressed: () async{
                      if(_formkey.currentState!.validate());
                      {
                        await authBase.registerWithEmailAndPassword(_email, _password);
                        Navigator.of(context).pushReplacement('homeimge' as Route<Object?>);
                      }

                    },
                    textColor: kPrimaryLightColor,
                    bgColor: kPrimaryColor
                ),

              ],
            ),
          ),
        ),
      ),
    );  }
}
