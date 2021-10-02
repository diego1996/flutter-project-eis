import 'package:flutter/material.dart';
import 'package:plants/models/plant.model.dart';

class BottomNavigation extends StatelessWidget {
  final List<Plant> plants;

  const BottomNavigation({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.white),
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
          icon: Icon(Icons.map, color: Colors.green),
          label: 'Mapa',
        ),
      ],
    );
  }
}
