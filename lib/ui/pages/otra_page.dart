import 'package:flutter/material.dart';

import '../shared/widgets/custom_app_menu.dart';

class OtraPage extends StatelessWidget {
  const OtraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          CustomAppMenu(),
          Spacer(),
          Text('Otra página'),
          Spacer(),
        ],
      ),
    );
  }
}
