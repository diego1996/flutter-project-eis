// @dart=2.13
import 'package:flutter/material.dart';
import 'package:plants/pages/splash.page.dart';

void main() {
  runApp(const PlantaBiodiversaApp());
}

class PlantaBiodiversaApp extends StatelessWidget {
  const PlantaBiodiversaApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planta Biodiversa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashPage(),
    );
  }
}
