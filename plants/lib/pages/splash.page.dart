import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home.page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: const HomePage(),
      title: const Text(
        'Planta Biodiversa',
        textScaleFactor: 2,
      ),
      image: Image.asset('assets/planta.png'),
      loadingText: const Text("Cargando"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
