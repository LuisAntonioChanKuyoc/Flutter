import 'package:app_demo/app/Core/Auth/BaseAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 1;
  final _pageOptions = [
    Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
    Container(
      padding: EdgeInsets.symmetric(horizontal: 0),
      margin: EdgeInsets.only(top: 32),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text('HR'),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Habib RG',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('habib_mma@hotmail.com',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12))
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(Icons.chevron_right),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: _pageOptions[_selectedPage],
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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int currentPage) {
            setState(() {
              _selectedPage = currentPage;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Inicio')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text('perfil'))
          ]),
    );
  }
}
