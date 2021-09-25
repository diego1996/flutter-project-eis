import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:plants/models/plant.model.dart';

class PlantsProvider {
  final String _baseUrl = "plants.diegoasencio.co";
  final String _path = "/api/plant/";

  Future<List<Plant>> getAllPlants({int page = 1}) async {
    List<Plant> plants = [];

    var url = Uri.https(_baseUrl, _path, {"Accept": "application/json"});

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var x = json.decode(response.body) as List;
      plants = x.map((e) => Plant.fromJson(e)).toList();
    }

    return plants;
  }
}