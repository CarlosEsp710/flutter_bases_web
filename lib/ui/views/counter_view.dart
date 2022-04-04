import 'package:flutter/material.dart';

import '../shared/widgets/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Text(
            'Stateful Counter',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          const Text(
            'You have pushed the button this many times:',
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomFlatButton(
                title: 'Decrement',
                onPressed: () => setState(() => _counter--),
              ),
              CustomFlatButton(
                title: 'Increment',
                onPressed: () => setState(() => _counter++),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
