import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_playground/home/http/http_bindings.dart';
import 'package:rick_and_morty_playground/home/http/http_page.dart';

import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            children: [
              GetPage(
                  name: '/http',
                  page: () => HttpPage(),
                binding: HttpBindings()
              )
            ])
      ],
    );
  }
}
