import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(


      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 12,color: Colors.white),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.green),
          backgroundColor: Colors.green,
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list, color: Colors.green),
          backgroundColor: Colors.green,
          label: 'Lista',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map,  color: Colors.green),

          label: 'Mapa',
        ),
      ],
    );
  }
}