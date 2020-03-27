import 'package:flutter/material.dart';

class FeatureSelectionPage extends StatefulWidget {
  static const routeName = '/featureSelection';
  FeatureSelectionPage({Key key}) : super(key: key);

  @override
  _FeatureSelectionPageState createState() => _FeatureSelectionPageState();
}

class _FeatureSelectionPageState extends State<FeatureSelectionPage> {
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
                  'Seleccionar fuente',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xffeF9F5F4),
                child: ListView(children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Instagram'),
                      onTap: () {
                        _showSnackBar();
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Google Fotos'),
                      onTap: () {
                        _showSnackBar();
                      },
                    ),
                  ),
                  Card(
                      child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Facebook'),
                    onTap: () {
                      _showSnackBar();
                    },
                  ))
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
