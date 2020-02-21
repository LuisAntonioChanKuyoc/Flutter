import 'package:app_demo/app/page/login.dart';
import 'package:flutter/material.dart';

import 'app/Core/Auth/Auth.dart';
import 'app/page/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new RootPage(auth: new Auth()),
    );
  }
}
