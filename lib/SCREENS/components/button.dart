import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final String text;
 final VoidCallback onPressed;
 final Color textColor;
 final Color bgColor;

  const Button(
 {super.key,
 required this.text,
 required this.onPressed,
 required this.textColor,
 required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      /*child: RaisedButton(
        color: bgColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(text,
        style: TextStyle(color: textColor , fontSize: 18),
        ),
      ),*/
      child: ElevatedButton(
        child: Text(text,
        style: TextStyle(color: textColor , fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(primary: bgColor),
      onPressed: onPressed,
      ),

    );
  }
}
