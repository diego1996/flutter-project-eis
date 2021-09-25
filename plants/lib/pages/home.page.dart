import 'package:flutter/material.dart';
import 'package:plants/widgets/navigation.drawer.widget.dart';

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
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Inicio"),
        ),
        body: const Center(
          child: Text("Hola mundo"),
        ));
  }
}
