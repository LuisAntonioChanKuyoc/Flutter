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
        centerTitle: true,
        title: Text('easyPhotos'),
      ),
      body: ListView(
        children: <Widget>[
          Column(children: <Widget>[_Card()])
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  _Card({
    String title,
    String subtitle,
  });
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [AppColors.simpleShadow],
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Row(
        children: <Widget>[
          _image(deviceInfo.size.height * .15),
          _description(deviceInfo.size.height * .15),
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
            'Mis Fotos',
            style: AppColors.titleStyle,
          ),
          Text('soy el titulo'),
          Text('soy el titulo'),
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
    );
  }
}


