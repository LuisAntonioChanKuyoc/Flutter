import 'package:app_demo/app/Core/Auth/BaseAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo"), actions: <Widget>[
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => {})
      ]),
      body: Center(child: Text('Bienvenido')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
                  height: 40,
                ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i1.wp.com/codesundar.com/wp-content/uploads/2019/08/cropped-codesundar-favicon.png")),
              title: Text("Mauricio Canche"),
              subtitle: Text("example@desarrollo.com"),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
            ListTile(leading: Icon(Icons.account_box), title: Text('Perfil')),
            ListTile(leading: Icon(Icons.exit_to_app), title: Text("Salir")),
          ],
        ),
      ),
    );
  }
}
