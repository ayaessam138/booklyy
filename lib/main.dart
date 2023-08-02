import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'features/splash/persentation/view/splashscreen.dart';

void main() {
  runApp(bookly());
}

class bookly extends StatelessWidget {
  bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: splashscreen(),
    );
  }
}
