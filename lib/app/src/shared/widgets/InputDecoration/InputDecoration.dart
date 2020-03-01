import 'package:flutter/material.dart';
 
 class InputWidget extends StatefulWidget {
  final Function(String) onChangeText;
  final String title;
  final Icon icono;
  final String messageError;
  final bool isPassword;
  
  InputWidget({ @required this.onChangeText, this.title, this.icono, this.messageError, this.isPassword });

  @override
  State<StatefulWidget> createState() => new _InputWidget();
}
 
class _InputWidget extends State<InputWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        obscureText: widget.isPassword,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: widget.title,
            icon: widget.icono
        ),
        validator: (value) => value.isEmpty ? widget.messageError : null,
        onSaved: (value) => widget.onChangeText(value.trim())
      ),
    );
  }
}