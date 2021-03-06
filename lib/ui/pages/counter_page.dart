import 'package:flutter/material.dart';

import '../shared/widgets/custom_app_menu.dart';
import '../shared/widgets/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CustomAppMenu(),
          const Spacer(),
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
          const Spacer(),
        ],
      ),
    );
  }
}
