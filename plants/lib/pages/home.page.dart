import 'package:flutter/material.dart';
import 'package:plants/widgets/bottom.navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pages = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Inicio"),
        ),
        bottomNavigationBar: const BottomNavigation(),
        body: Center(
          child: Container(
            child: const Text("Hola mundo"),
          ),
        )
    );
  }

}