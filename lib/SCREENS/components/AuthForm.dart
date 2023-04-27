import 'package:flutter/material.dart';
import 'package:untitled/SCREENS/components/button.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/services/auth.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  String _email="" ,_password=""   ;
  AuthBase authBase = AuthBase();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                TextFormField(
                  onChanged:  (value) => _email=value ,
                 validator: (value) => value!.isEmpty ? "enter your email":null ,
                  decoration: InputDecoration(
                    labelText: 'Enter your emil',labelStyle: TextStyle(color:Color (0xFF6F35A5)),
                    hintText: 'ex: test@gmail.com',

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  onChanged:  (value) => _password=value ,

                  validator: (value){
                    return value!.length < 6 ? 'complete the password' : null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter your password',labelStyle: TextStyle(color:Color (0xFF6F35A5)),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                Button(
                    text: 'login',
                    onPressed: () async {
                      if(_formkey.currentState!.validate());
                      {
                        await authBase.loginWithEmailAndPassword(
                            _email, _password);
                        Navigator.of(context).pushReplacement('homeimge' as Route<Object?>);
                      }
                    },
                    textColor: kPrimaryLightColor,
                    bgColor: kPrimaryColor
                ),
                SizedBox(height: 5,),
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed("sinup");

                    },
                  child:Text('Don\'t have an account?',
                  style: TextStyle(
                    color: Color(0xFF6F35A5),
                    fontSize: 20
                  ),
                  )
                ),


              ],

            ),


          ),
      ),
      ],
    );
  }
}
