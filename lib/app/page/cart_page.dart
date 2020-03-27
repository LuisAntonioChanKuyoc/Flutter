import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _currentStep = 0;
  bool complete = false;

  List<Step> _purchaseSteps = [
    Step(
      title: const Text(''),
      isActive: true,
      state: StepState.indexed,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.indexed,
      title: const Text(''),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),
    Step(
      state: StepState.indexed,
      title: const Text(''),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            SafeArea(
              child: Text(
                "Esta completo tu carrito",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(155, 155, 155, 1)),
              ),
            ),
          ]),
          Expanded(
            child: Stepper(
              currentStep: _currentStep,
              steps: _purchaseSteps,
              type: StepperType.horizontal,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          )
        ],
      ),
    );
  }

  next() {
    _currentStep + 1 != _purchaseSteps.length
        ? goTo(_currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (_currentStep > 0) {
      goTo(_currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => _currentStep = step);
  }
}
