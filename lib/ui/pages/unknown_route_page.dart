import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../shared/widgets/custom_flat_button.dart';

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 20),
            Text(
              'Page not found',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 20),
            CustomFlatButton(
              title: 'Go to counter',
              color: Colors.black,
              onPressed: () => Get.offAllNamed('/stateful'),
            ),
          ],
        ),
      ),
    );
  }
}
