import 'package:flutter/material.dart';
 
class CircularProgressWidget extends StatelessWidget {

  CircularProgressWidget(this.isLoading);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}