import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnTitle;
  final Function onPressed;

  MyButton({this.btnTitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        btnTitle,
        style: TextStyle(
          fontSize: 18.0,
          letterSpacing: 1.2,
        ),
      ),
      onPressed: onPressed,
      color: Colors.indigo,
      textColor: Colors.white,
      minWidth: 250,
      height: 50,
    );
  }
}
