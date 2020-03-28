import 'package:flutter/material.dart';

class AlbumSelectionPage extends StatefulWidget {
  static const routeName = '/featureSelection';
  AlbumSelectionPage({Key key}) : super(key: key);

  @override
  _AlbumSelectionPageState createState() => _AlbumSelectionPageState();
}

class _AlbumSelectionPageState extends State<AlbumSelectionPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        padding: EdgeInsets.all(8.0),
        width: screenSize.width,
        height: screenSize.height,
        color: Color(0xffeF9F5F4),
        child: Column(
          children: <Widget>[
            Container(
              child: SafeArea(
                child: Text(
                  'Seleccionar album para sincronizar',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xffeF9F5F4),
                child: ListView(
                  children: <Widget>[
                  ListTile(
                    trailing: FlutterLogo(),
                    title: Text('data'),
                    subtitle: Text('data'),
                    onTap: (){
                        _showSnackBar();
                    },
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showSnackBar() {
    SnackBar snackBar = new SnackBar(content: new Text("Proximamente"));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
