import 'package:flutter/material.dart';
 
class CircularButtonWidget extends StatelessWidget {

  CircularButtonWidget({this.onPressed, this.texto});

  final VoidCallback onPressed;
  final Text texto;

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
        child: SizedBox(
          height: 40.0,
          child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.lightGreen,
            child: texto,
            onPressed: onPressed,
          ),
        ));
  }
  }
