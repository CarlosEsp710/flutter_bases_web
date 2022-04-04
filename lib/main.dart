import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../ui/views/counter_view.dart';
import '../ui/views/getx_view.dart';
import '../ui/views/otra_view.dart';
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
      builder: (_, child) => MainLayoutPage(
        child: child ?? const CircularProgressIndicator(),
      ),
      unknownRoute: GetPage(
        name: '/404',
        page: () => const UnknownRoutePage(),
        transition: Transition.noTransition,
      ),
      getPages: [
        GetPage(
          name: '/stateful',
          page: () => const CounterView(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/getx',
          page: () => const GetxView(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/otra/:name/:lastName/:age',
          page: () => const OtraView(),
          transition: Transition.noTransition,
        ),
      ],
    );
  }
}
