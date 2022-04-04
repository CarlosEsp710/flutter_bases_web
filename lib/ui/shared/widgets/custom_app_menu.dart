import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 50,
      child: Row(
        children: <Widget>[
          CustomFlatButton(
            title: 'Contador Stateful',
            color: Colors.black,
            onPressed: () => Get.toNamed('/stateful?counter=10'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            title: 'Contador GetX',
            color: Colors.black,
            onPressed: () => Get.toNamed('/getx'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            title: 'Otra página',
            color: Colors.black,
            onPressed: () => Get.toNamed('/otra/Carlos'),
          ),
        ],
      ),
    );
  }
}
