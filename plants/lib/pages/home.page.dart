import 'package:flutter/material.dart';
import 'package:plants/models/plant.model.dart';
import 'package:plants/pages/list.page.dart';
import 'package:plants/pages/main.page.dart';
import 'package:plants/providers/plants.provider.dart';
import 'package:plants/widgets/map.widget.dart';
import 'package:plants/widgets/navigation.drawer.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pages = 0;
  final PlantsProvider plantsProvider = PlantsProvider();
  Future<List<Plant>> futurePlants = Future.value([]);

  @override
  void initState() {
    futurePlants = plantsProvider.getAllPlants(page: 1);
    super.initState();
  }

  int indexTap = 0;

  Widget bodyNavigation(List<Plant> plants) {
    switch(indexTap) {
      case 0:
        return Principal();
      case 1:
        return Listado();
      case 2:
        return MapWidget(plants: plants);
      default:
        return Container();
    }
  }

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
        future: futurePlants,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Plant> listPlants = [];
          snapshot.data.forEach((item) {
            listPlants.add(item);
          });
          return Scaffold(
            drawer: const NavigationDrawer(),
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text("Planta Biodiversa"),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                primaryColor: Colors.purple,
              ),
              child: BottomNavigationBar(
                  onTap: onTapTapped,
                  currentIndex: indexTap,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "inicio",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.list),
                      label: "listado",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.map),
                      label: "mapa",
                    ),
                  ]),
            ),
            body: bodyNavigation(listPlants),
          );
        });
  }
}
