import 'package:flutter/material.dart';
import 'package:plants/models/plant.model.dart';
import 'package:plants/providers/plants.provider.dart';
import 'package:plants/widgets/bottom.navigation.widget.dart';
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

  @override
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
                title: const Text("Inicio"),
              ),
              bottomNavigationBar: BottomNavigation(plants: listPlants),
              body: const Center(
                child: Text("Hola mundo"),
              ));
        });
  }
}
