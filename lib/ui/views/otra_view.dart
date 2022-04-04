import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OtraView extends StatelessWidget {
  const OtraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = Get.parameters['name'];

    return Scaffold(
      body: Center(
        child: Text('Hola $name'),
      ),
    );
  }
}
