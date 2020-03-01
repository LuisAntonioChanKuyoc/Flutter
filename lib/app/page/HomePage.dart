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
      body: Container(
          padding:  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          // width: MediaQuery.of(context).size.width - 40,
          // alignment: Alignment.center,
          child: Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('Foto'),
                subtitle: Text('Crear un Pixyalbum.'),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Crear'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: CircleAvatar(
                  // backgroundColor: Color(0xff4db6ac),
                  ),
              title: Text("Mauricio Canche"),
              subtitle: Text("example@desarrollo.com"),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Color(0xff4db6ac)),
              title: Text("Inicio"),
              onTap: () {},
            ),
            ListTile(
                leading: Icon(Icons.account_box, color: Color(0xff4db6ac)),
                title: Text('Perfil'),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.exit_to_app, color: Color(0xff4db6ac)),
                title: Text("Salir"),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
