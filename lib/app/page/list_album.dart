import 'package:flutter/material.dart';

class ListAlbumPage extends StatefulWidget {
  ListAlbumPage({Key key}) : super(key: key);

  @override
  _ListAlbumPageState createState() => _ListAlbumPageState();
}

class _ListAlbumPageState extends State<ListAlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            // padding: EdgeInsets.only(right: 20.0),
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
      body: Container(
          margin: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) -10,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                          
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.google.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img3.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    // offset: Offset(0.0, 2.0),
                                    // blurRadius: 2.0,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Familia",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.facebook.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img2.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Viajes",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) -10,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                          
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.google2.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img4.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    // offset: Offset(0.0, 2.0),
                                    // blurRadius: 2.0,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Familia",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.facebook1.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img3.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Viajes",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ), 
                   Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) -10,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                          
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.google22.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    // offset: Offset(0.0, 2.0),
                                    // blurRadius: 2.0,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Familia",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.facebook11.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img3.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Viajes",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                   Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) -10,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                          
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.google2h.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img4.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    // offset: Offset(0.0, 2.0),
                                    // blurRadius: 2.0,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Familia",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: "www.facebook1d.com",
                                    child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image:
                                            AssetImage("assets/img/img1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    width:  (MediaQuery.of(context).size.width / 2)-0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                                      child: 
                                      Container(
                                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                        child: 
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Viajes",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )
            ],
          )),
    );
  }
}
