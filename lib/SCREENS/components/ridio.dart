import 'package:flutter/material.dart';

class GenderRadio extends StatefulWidget {
  @override
  _GenderRadioState createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
   String? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Gender',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: <Widget>[
            Radio(
              value: 'male',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value as String;
                });
              },
            ),
            Text('Male'),
            Radio(
              value: 'female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value as String ;
                });
              },
            ),
            Text('Female'),
          ],
        ),
      ],
    );
  }
}

