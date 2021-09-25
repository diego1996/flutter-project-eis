import 'package:flutter/material.dart';
import 'package:plants/pages/home.page.dart';

class NavigationDrawer extends StatelessWidget {
  final int _selectedDestination = 0;

  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: Colors.greenAccent,
              child: Image.asset("assets/hoja.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Row(
                  children: const [
                    Icon(
                      Icons.home,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      'Inicio',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Row(
                  children: const [
                    Icon(
                      Icons.info,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      'Acerca de',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings_applications,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      'Configuración',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
