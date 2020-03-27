import 'dart:convert';

class Counter {
  final int counter;

  const Counter({this.counter});

  Counter copyWith({int counter}) {
    return Counter(
      counter: counter ?? this.counter,
    );
  }

  dynamic toJson() => {
        'counter': this.counter,
      };

  @override
  String toString() {
    return 'Counter: ${JsonEncoder.withIndent('  ').convert(this)}';
  }
}
