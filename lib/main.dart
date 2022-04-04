import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../ui/pages/counter_page.dart';
import '../ui/pages/getx_page.dart';
import '../ui/pages/otra_page.dart';
import '../ui/pages/unknown_route_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bases Web',
      initialRoute: '/stateful',
      unknownRoute: GetPage(
        name: '/not_found',
        page: () => const UnknownRoutePage(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(
          name: '/stateful',
          page: () => const CounterPage(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/getx',
          page: () => const GetxPage(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/otra',
          page: () => const OtraPage(),
          transition: Transition.noTransition,
        ),
      ],
    );
  }
}
