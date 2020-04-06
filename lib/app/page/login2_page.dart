import 'package:app_demo/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFE0703E)),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              height: _deviceInfo.size.height * .5,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: [AppColors.simpleShadow]),
              child: Column(
                children: <Widget>[
                  _iconTitle(),
                  _emaiInput(),
                  _passwordInput(),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      child: Text(
                        'Iniciar',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => {},
                      color: Color.fromRGBO(251, 102, 22, 1),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _iconTitle() => Image.asset(
        'assets/img/icon-name.png',
        width: 200,
      );

  Widget _emaiInput() => Container(
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: 'Email',
              border: InputBorder.none,
              icon: Icon(Icons.email)),
        ),
      );
  Widget _passwordInput() => Container(
        child: TextField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            labelText: 'Password',
            icon: Icon(Icons.remove_red_eye),
            border: InputBorder.none,
          ),
        ),
      );
}
