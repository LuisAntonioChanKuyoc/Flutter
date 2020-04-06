import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeailPage extends StatefulWidget {
  DeailPage({Key key}) : super(key: key);

  @override
  _DeailPagePageState createState() => _DeailPagePageState();
}

class _DeailPagePageState extends State<DeailPage> {
  bool isSwitched = true;
  bool isActive = true;
  bool isActiveSize = true;
  String title = "Mis fotos";
  final _formKey = GlobalKey<FormState>();
  var _formtitleKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: Scaffold(
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
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: TextField(
                      enabled: true,
                      readOnly: true,
                      controller: TextEditingController(text: title),
                      decoration: InputDecoration(
                          labelText: 'Título',
                          labelStyle:
                              TextStyle(color: Colors.black54, fontSize: 20),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          suffixIcon: const Icon(
                            Icons.edit,
                            color: Colors.blue,
                            size: 20,
                            textDirection: TextDirection.rtl,
                          ),
                          // suffixText: "Editar",
                          suffixStyle: TextStyle(color: Colors.blue)),
                      // initialValue: "Título",
                      // enabled: false,
                      // readOnly: true,
                      onTap: () async {
                        _onFromTapped();

                        await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alertDialog();
                            });
                        _onFromTapped();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 9.0,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            'assets/img/img1.jpg',
                            fit: BoxFit.fitHeight,
                            height: 150,
                            width: 200,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  new Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                //  width: MediaQuery.of(context).size.width / 1.7,
                                child: Text(
                                  "Imprimir fechas",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                width: MediaQuery.of(context).size.width / 2,
                                // width: MediaQuery.of(context).size.width / 1,
                                child: Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  inactiveThumbColor: Colors.red,
                                  inactiveTrackColor: Colors.black,
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: tipoPasta(),
                        )),
                        SizedBox(),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: tamanioPasta(),
                        )),
                        Divider(
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Row(
                            children: <Widget>[
                              const Text(
            "Total:",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontFamily: 'arial'),
          ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 5,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff80cbc4), Color(0xff4db6ac)])),
                      alignment: Alignment.center,
                      child: Text('Siguiente',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/ListAbum');
                    },
                  ))
            ],
          ),
        ));
  }

  BoxShadow isSelected(dynamic opt) {
    print(opt);
    return BoxShadow(
      color: Colors.black26,
      offset: Offset(0.0, 2.0),
      blurRadius: 9.0,
    );
  }

  List<Widget> tipoPasta() {
    return [
      Container(
        key: ValueKey("pastadura"),
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          boxShadow: isActive ? [isSelected(this)] : [],
        ),
        alignment: Alignment.center,
        child: Card(
            child: ListTile(
          selected: isActive,
          title: Text(
            'Pasta Dura',
            style: isActive ? colorActive() : colorInactive(),
          ),
          onTap: () {
            setState(() {
              isActive = true;
            });

            // var x=tipoPasta().where((test)=>(test.key == ValueKey("pastadura"))).toList();
            // var doc=x.first;
            // var po=doc as Container;
            // var po1=po.child as Card;
            // var po2=po1.child as ListTile;

            // if(!po2.selected){
            //   isActive = true;
            // }
            // print(po2);
          },
        )),
      ),
      Container(
        key: ValueKey("pastasuave"),
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          boxShadow: !isActive ? [isSelected(this)] : [],
        ),
        child: Card(
            child: ListTile(
          selected: !isActive,
          title: Text(
            'Pasta Suave',
            style: !isActive ? colorActive() : colorInactive(),
          ),
          onTap: () {
            setState(() {
              isActive = false;
            });

            // var x=tipoPasta().where((test)=>(test.key == ValueKey("pastasuave"))).toList();
            //   var doc=x.first;
            //   var po=doc as Container;
            //   var po1=po.child as Card;
            //   var po2=po1.child as ListTile;

            //   if(!po2.selected){
            //     isActive = false;
            //   }
          },
        )),
      )
    ];
  }

  TextStyle colorActive() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }

  TextStyle colorInactive() {
    return TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }

  List<Widget> tamanioPasta() {
    return [
      Container(
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          boxShadow: isActiveSize ? [isSelected(this)] : [],
        ),
        child: Card(
            child: ListTile(
          selected: isActiveSize,
          title: Text(
            '16x16 cm',
            style: isActiveSize ? colorActive() : colorInactive(),
          ),
          onTap: () {
            setState(() {
              isActiveSize = true;
            });
            // _showSnackBar();
          },
        )),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          boxShadow: !isActiveSize ? [isSelected(this)] : [],
        ),
        child: Card(
            child: ListTile(
          selected: !isActiveSize,
          title: Text(
            '21x21 cm',
            style: !isActiveSize ? colorActive() : colorInactive(),
          ),
          onTap: () {
            setState(() {
              isActiveSize = false;
            });
            // _showSnackBar();
          },
        )),
      )
    ];
  }

  AlertDialog alertDialog() {
    TextEditingController _textField = TextEditingController();

    int countTitle = 0;
    int totalTitle = 30;
String set1="";
    return AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 15),
      titlePadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      title: Row(
        // verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: const Text("X",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    fontFamily: 'arial')),
            onTap: () {
              if (_formtitleKey.currentState.validate()) {
                Navigator.pop(context);
              }
            },
          ),
          const Text(
            "Editar título",
            style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'arial'),
          ),
          GestureDetector(
            child: const Text("Listo",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: 'arial')),
            onTap: () {
              if (_formtitleKey.currentState.validate()) {
                //  Scaffold.of(context).showSnackBar(SnackBar(content:Text("data")));
                title = _formtitleKey.currentState.value;
                Navigator.pop(context);
              }
            },
          ),
          // FlatButton(

          //   onPressed: () {
          //     print(_formtitleKey);

          //     if (_formtitleKey.currentState.validate()) {
          //       //  Scaffold.of(context).showSnackBar(SnackBar(content:Text("data")));
          //       title = _formtitleKey.currentState.value;
          //       Navigator.pop(context);
          //     }
          //   },
          //   child: const Text("Listo"),
          // ),
          //   Container(
          //     child: Row(
          //   children: <Widget>[
          //    FlatButton(

          //   onPressed: () {
          //     print(_formtitleKey);

          //     if (_formtitleKey.currentState.validate()) {
          //       //  Scaffold.of(context).showSnackBar(SnackBar(content:Text("data")));
          //       title = _formtitleKey.currentState.value;
          //       Navigator.pop(context);
          //     }
          //   },
          //   child: const Text("X"),
          // ),

          //   ],

          //     ),
          //   ),
          //   Text("Editar título"),
          //   Container(
          //     child: Row(
          // mainAxisAlignment: MainAxisAlignment.end,

          //       children: <Widget>[
          //         FlatButton(

          //   onPressed: () {
          //     print(_formtitleKey);

          //     if (_formtitleKey.currentState.validate()) {
          //       //  Scaffold.of(context).showSnackBar(SnackBar(content:Text("data")));
          //       title = _formtitleKey.currentState.value;
          //       Navigator.pop(context);
          //     }
          //   },
          //   child: const Text("Listo"),
          // ),
          //       ],
          //     ),
          //   )
        ],
      ),
      content: Row(
        children: <Widget>[
          new Expanded(
            key: _formKey,
            child: TextFormField(
              controller: TextEditingController(text: title),
              key: _formtitleKey,
              autovalidate: true,
              autofocus: true,
              maxLength: 30,
              maxLengthEnforced: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 20.0),
                  labelText: 'Nombre de la colección',
                  labelStyle: TextStyle(fontSize: 18),
                  counterText: "$countTitle/$totalTitle",
                  ),
              validator: (value) {
                  countTitle = value.length;

                print(value);
                print(_formtitleKey.currentState);
                if (value.isEmpty) {
                  return "Campo obligatorio";
                }
                return null;
              },
              onChanged: (value){
                setState(() {
                  
                  countTitle = value.length;
                set1 =value.length.toString();
                print(set1);
                });
                
              },
              onSaved: (val) => setState(() => 
              {
                title = val
                }),
            ),
          )
        ],
      ),
    );
  }

  void _onFromTapped() {
    FocusScopeNode current = FocusScope.of(context);
    current.previousFocus();
  }
}
