import 'package:flutter/material.dart';

class OtraView extends StatelessWidget {
  const OtraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Otra página'),
      ],
    );
  }
}
