import 'package:flutter/material.dart';

class DeailPage extends StatefulWidget {
  DeailPage({Key key}) : super(key: key);

  @override
  _DeailPagePageState createState() => _DeailPagePageState();
}

class _DeailPagePageState extends State<DeailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     title: Text('Demo'),
        //   ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            height: MediaQuery.of(context).size.height - 80,
            child: Stack(children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Titulo del album'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 9.0,
                            ),
                          ],
                          // borderRadius: BorderRadius.circular(20.0),
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          children: <Widget>[
                            Card(
                              child: Image.asset(
                                'assets/img/img1.jpg',
                                fit: BoxFit.fitHeight,
                                height: 200,
                                width: 250,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Card(
                            child: ListTile(
                              title: Text('Pasta Suave'),
                              onTap: () {
                                // _showSnackBar();
                              },
                            )),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Card(
                            child: ListTile(
                              title: Text('Pasta Dura'),
                              onTap: () {
                                // _showSnackBar();
                              },
                            )),
                          )
                        ],
                      ),
                          ),
                          SizedBox(
                        height: 5,
                      ),
                          Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Card(
                            child: ListTile(
                              title: Text('16x16 cm '),
                              onTap: () {
                                // _showSnackBar();
                              },
                            )),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Card(
                            child: ListTile(
                              title: Text('21x21 cm'),
                              onTap: () {
                                // _showSnackBar();
                              },
                            )),
                          )
                        ],
                      ))
                    ],
                  ))
            ])),
            endDrawer: Text('w2w'),);
  }
}
