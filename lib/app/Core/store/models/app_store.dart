import 'dart:convert';
import 'package:app_demo/app/Core/store/models/counter.dart';
import 'package:app_demo/app/Core/store/models/shopping-cart.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final ShoppingCart shoppingCart;
  final Counter counter;

  const AppState({@required this.shoppingCart, @required this.counter});

  dynamic toJson() =>
      {'ShoppingCart': this.shoppingCart, 'Counter': this.shoppingCart};

  @override
  String toString() {
    return 'AppState: ${JsonEncoder.withIndent('  ').convert(this)}';
  }
}
