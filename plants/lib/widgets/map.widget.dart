import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:plants/models/plant.model.dart';

class MapWidget extends StatelessWidget {
  final List<Plant> plants;

  const MapWidget({Key? key, required this.plants}) : super(key: key);

  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(4.15, -73.633),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
          attributionBuilder: null,
        ),
        MarkerLayerOptions(
          markers: _markers(),
        ),
      ],
    );
  }

  _markers() {
    List<Marker> listMarkers = [];
    for (var plant in plants) {
      for (var coordinate in plant.places) {
        listMarkers.add(Marker(
          width: 50.0,
          height: 50.0,
          point: LatLng(coordinate.lat, coordinate.lng),
          builder: (ctx) => Container(
            child: IconButton(
              // icon: Image.asset('assets/location-pin.png'),
              icon: Image.network(plant.category.image),
              onPressed: () {
                print("planta: ${plant.id}");
              },
            ),
          ),
        ));
      }
    }
    return listMarkers;
  }
}