import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plants/models/plant.model.dart';
import 'package:plants/pages/list.page.dart';
import 'package:plants/pages/main.page.dart';
import 'package:plants/providers/plants.provider.dart';
import 'package:plants/widgets/map.widget.dart';
import 'package:plants/widgets/navigation.drawer.widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    print("a");
    super.initState();
    print("b");
    futurePlants = getFutureStrategyPlants();
    print("c");
  }

  int indexTap = 0;

  Widget bodyNavigation(List<Plant> plants) {
    switch (indexTap) {
      case 0:
        return Principal();
      case 1:
        return ListViewWidget(plants: plants);
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
          List<Plant> listPlants = [];

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          snapshot.data.forEach((item) {
            listPlants.add(item);
          });
          saveInSharePreferences(listPlants);

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

  saveInSharePreferences(List<Plant> listPlants) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> save = [];
    listPlants.forEach((element) {
      save.add(element.toString());
    });
    prefs.setStringList('plants_key', save);
    print(prefs.getStringList('plants_key'));
  }

  Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print("tiene internet");
        return Future<bool>.value(true);
      }
    } on SocketException catch (_) {
      print("no tiene internet");
      return Future<bool>.value(false);
    }

    print("no tiene internet");
    return Future<bool>.value(false);
  }

  Future<List<Plant>> getDataFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? list = prefs.getStringList('plants_key');
    List<Plant> result = [];

    list!.forEach((element) {
      print("element: $element");
      var x = jsonDecode(element);
      print(x);
      Plant plant = Plant.fromJson(x);
      result.add(plant);
    });

    return result;
  }

  Future<List<Plant>> getFutureStrategyPlants() async {
    print("entro");
    var conn = await checkConnection();
    if (conn) {
      print("is connected");
      return plantsProvider.getAllPlants(page: 1);
    } else {
      print("is not connected");
      return getDataFromSharedPreferences();
    }
  }
}
