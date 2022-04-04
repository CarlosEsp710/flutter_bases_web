import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/counter_controller.dart';
import '../shared/widgets/custom_flat_button.dart';

class GetxView extends StatelessWidget {
  const GetxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController _controller = Get.put(CounterController());

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'GetX Counter',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 20),
        const Text(
          'You have pushed the button this many times:',
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Obx(
            () => Text(
              '${_controller.counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomFlatButton(
              title: 'Decrement',
              onPressed: () => _controller.decrement(),
            ),
            CustomFlatButton(
              title: 'Increment',
              onPressed: () => _controller.increment(),
            ),
          ],
        ),
      ],
    );
  }
}
