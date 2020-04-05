import 'package:app_demo/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Mi carrito'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xffeF9F5F4),
            height: deviceInfo.size.height,
            width: deviceInfo.size.width,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 80),
            color: Color(0xffeF9F5F4),
            child: ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  _CardShopping(
                      title: 'Mis Fotos 2',
                      subtitle: 'Esta es una prueba',
                      img: 'assets/img/img1.jpg'),
                  _CardShopping(
                      title: 'Mis Fotos 3',
                      subtitle: 'Esta es una prueba',
                      img: 'assets/img/img4.jpg'),
                  _CardShopping(
                      title: 'Mis Fotos 4',
                      subtitle: 'Esta es una prueba',
                      img: 'assets/img/img3.jpg'),
                  _CardShopping(
                      title: 'Mis Fotos 4',
                      subtitle: 'Esta es una prueba',
                      img: 'assets/img/img2.jpg'),
                  _CardShopping(
                      title: 'Mis Fotos 4',
                      subtitle: 'Esta es una prueba',
                      img: 'assets/img/img4.jpg'),
                ])
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              height: 80,
              width: deviceInfo.size.width,
              child: Center(
                child: Text('Ir a comprar'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _CardShopping extends StatelessWidget {
  String img;
  String title;
  String subtitle;
  int count;
  _CardShopping({
    this.img,
    @required this.title,
    @required this.subtitle,
    this.count = 1,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    double _sizeCard = deviceInfo.orientation == Orientation.landscape
        ? deviceInfo.size.height * .20
        : deviceInfo.size.height * .15;

    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [AppColors.simpleShadow],
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Row(
        children: <Widget>[
          Flexible(fit: FlexFit.loose, flex: 0, child: _image(_sizeCard)),
          Flexible(fit: FlexFit.tight, flex: 1, child: _description(_sizeCard)),
          Flexible(fit: FlexFit.loose, flex: 0, child: _remaining(_sizeCard))
        ],
      ),
      width: double.infinity,
    );
  }

  Widget _info() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
                fontFamily: 'Roboto',
                color: new Color(0xFF212121),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Text(
            this.subtitle +
                'sdffsdfdsfdsfsdfdsfsdfdsfssdfdsfdsfsdfdsfsdfsdfdsfdsfsdfdsfsdfsdfsdfdsfsdfsd',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontFamily: 'Roboto',
                color: new Color(0xFF212121),
                fontSize: 12),
          )
        ],
      );

  Widget _description(double height) {
    return Container(
        height: height,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Colors.white),
        child: _info());
  }

  Widget _image(double height) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: height,
      width: 100,
      color: Colors.yellow,
      child: Image.asset(
        this.img ?? 'assets/img/img1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _remaining(double height) {
    return Container(
      height: height,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          InkWell(
              onTap: () => {print('apretado')},
              child: Icon(Icons.close, color: Colors.black26, size: 18)),
          MoreOrLess(
            count: this.count,
            horizontal: true,
          )
        ],
      ),
    );
  }
}

class MoreOrLess extends StatefulWidget {
  /**
   * Función que obtiene el valor del contador
   */
  Function(int) getValue;
  /**
   * Indica si el componente estara en horizontal o vertical
   */
  bool horizontal;
  /**
   * Indica con el número que comenzara el contador
   */
  int count = 0;

  /**
   * 
   */
  MoreOrLess({Key key, this.count, this.horizontal = true, this.getValue})
      : super(key: key);

  @override
  _MoreOrLessState createState() => _MoreOrLessState();
}

class _MoreOrLessState extends State<MoreOrLess> {
  @override
  Widget build(BuildContext context) {
    return widget.horizontal ? _horizontal() : _vertical();
  }

  Widget _horizontal() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      height: 25,
      width: 73,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(flex: 1, fit: FlexFit.tight, child: _less()),
          Flexible(flex: 2, fit: FlexFit.tight, child: _cout()),
          Flexible(flex: 1, fit: FlexFit.tight, child: _more()),
        ],
      ),
    );
  }

  Widget _vertical() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      height: 73,
      width: 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(flex: 1, fit: FlexFit.tight, child: _more()),
          Flexible(flex: 2, fit: FlexFit.tight, child: _cout()),
          Flexible(flex: 1, fit: FlexFit.tight, child: _less()),
        ],
      ),
    );
  }

  Widget _cout() {
    return InkWell(
        child: Center(
      child: Text(
        '${widget.count}',
        style: TextStyle(fontSize: 12),
      ),
    ));
  }

  Widget _more() {
    return InkWell(
        onTap: () => _onChangeCount(1),
        child: Center(
          child: Icon(
            Icons.add,
            size: 12,
          ),
        ));
  }

  Widget _less() {
    return InkWell(
        onTap: () => _onChangeCount(-1),
        child: Center(
          child: Icon(
            Icons.remove,
            size: 12,
          ),
        ));
  }

  void _onChangeCount(int number) {
    int countAux = widget.count;

    if (countAux <= 1) {
      if (number < 0) return;
    }

    widget.count += number;
    this.setState(() {});
  }
}
