import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.green,

      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(fontSize: 12,color: Colors.white),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          backgroundColor: Colors.green,
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list, color: Colors.white),
          backgroundColor: Colors.green,
          label: 'Mapa',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map,  color: Colors.white),

          label: 'Mapa',
        ),
      ],
    );
  }
}
