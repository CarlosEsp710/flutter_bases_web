import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomFlatButton(
                  title: 'Increment',
                  color: Colors.blue,
                  onPressed: () => setState(() => _counter++),
                ),
                CustomFlatButton(
                  title: 'Decrement',
                  onPressed: () => setState(() => _counter--),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
