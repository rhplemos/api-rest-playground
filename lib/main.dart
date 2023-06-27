import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_playground/home/http/http_bindings.dart';
import 'package:rick_and_morty_playground/home/http/http_page.dart';
import 'package:device_preview/device_preview.dart';

import 'home/home_page.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
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
