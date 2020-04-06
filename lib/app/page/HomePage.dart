import 'package:app_demo/app/Core/Auth/BaseAuth.dart';
import 'package:app_demo/app/themes/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Answers { YES, NO, MAYBE }

final List<String> imgList = [
  'assets/img/img1.jpg',
  'assets/img/img2.jpg',
  'assets/img/img3.jpg',
  'assets/img/img4.jpg',
];

class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class Ad {
  String title;
  String content;
  String buttonText;
  String imageURL;
  Ad(this.title, this.content, this.buttonText, this.imageURL) {}
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  int _selectedPage = 0;
  List<Ad> ads = [
    new Ad(
        "Portadas prediseñadas",
        "Una vez creado tu álbum, selecciona 'Cambiar portada' y encontrarás portadas prediseñadas de diferentes temas",
        "Crear álbum",
        "assets/img/img1.jpg"),
    new Ad(
        "Pasta suave",
        "Paquete con 60 fotos, papel couche e impresión digital por solo \$ 199 MXN. ¡No te lo pierdas!",
        "Ver producto",
        "assets/img/img2.jpg"),
    new Ad(
        "Pasta dura",
        "Paquete con 60 fotos, papel couche 150 grs, tamaño 16x16 e impresión digital por solo \$ 349 MXN",
        "Ver producto",
        "assets/img/img3.jpg")
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  createDialog(BuildContext context, Ad ad) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              titlePadding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: Container(
                height: 180,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    image: DecorationImage(
                      image: new AssetImage(ad.imageURL),
                      fit: BoxFit.fill,
                    )),
              ),
              content: Container(
                height: 125,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(ad.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: <Widget>[Text(ad.content)],
                      )
                    ],
                  ),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                    child: Text(ad.buttonText),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ]);
        });
  }

  createCarouselSlider(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return CarouselSlider(
      height: deviceInfo.size.height * .18,
      autoPlayInterval: Duration(seconds: 6),
      viewportFraction: 1.0,
      aspectRatio: 2,
      autoPlay: true,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
      // enlargeCenterPage: true,
      items: ads.map(
        (item) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: deviceInfo.size.width - 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [AppColors.simpleShadow]),
            child: GestureDetector(
              onTap: () {
                print("tap a item de carrousel");
                createDialog(context, item);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item.imageURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/icon-name.png'),
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
      body: _Tab(context, _selectedPage),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create');
        },
        child: Icon(Icons.add_a_photo),
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

  Widget _Tab(BuildContext context, int tab) {
    final _pageOptions = [
      Container(
          child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    children: <Widget>[
                      createCarouselSlider(context),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(
                          ads,
                          (index, url) {
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4)),
                            );
                          },
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Card(
                  child: Container(
                // width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/img/img3.jpg",
                        fit: BoxFit.fitHeight,
                      ),

                      title: Text(
                        "Album 2",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Album",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal)),
                            Text('Population: ',
                                style: TextStyle(
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.normal)),
                          ]),
                      //trailing: ,
                      onTap: () {
                        Navigator.pushNamed(context, '/Detail');
                      },
                    )
                  ],
                ),
              )),
              Card(
                  child: Container(
                // width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/img/img1.jpg",
                        fit: BoxFit.cover,
                      ),

                      title: Text(
                        "Album 1",
                        style: new TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text("Album",
                                style: new TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal)),
                            new Text('Population: ',
                                style: new TextStyle(
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.normal)),
                          ]),
                      //trailing: ,
                      onTap: () {
                        Navigator.pushNamed(context, '/Detail');
                        // Navigator.pushNamed(context, '/cart');
                      },
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      )),
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
                        backgroundColor: AppColors.grey,
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
    return _pageOptions[tab];
  }

  Future _askUser() async {
    switch (await showDialog(
        context: context,
        /*it shows a popup with few options which you can select, for option we
        created enums which we can use with switch statement, in this first switch
        will wait for the user to select the option which it can use with switch cases*/
        child: new SimpleDialog(
          title: new Text('Do you like Flutter?'),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text('Yes!!!'),
              onPressed: () {
                Navigator.pop(context, Answers.YES);
              },
            ),
            new SimpleDialogOption(
              child: new Text('NO :('),
              onPressed: () {
                Navigator.pop(context, Answers.NO);
              },
            ),
            new SimpleDialogOption(
              child: new Text('Maybe :|'),
              onPressed: () {
                Navigator.pop(context, Answers.MAYBE);
              },
            ),
          ],
        ))) {
      case Answers.YES:
        // _setValue('Yes');
        break;
      case Answers.NO:
        // _setValue('No');
        break;
      case Answers.MAYBE:
        // _setValue('Maybe');
        break;
    }
  }
}
