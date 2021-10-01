import 'package:plants/models/place.model.dart';

import 'category.model.dart';

class Plant {
  int id;
  String image;
  String name;
  String scientificName;
  Category category;
  List<Place> places;

  Plant({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.image,
    required this.category,
    required this.places,
  });

  factory Plant.fromJson(Map<String, dynamic> json) => Plant(
      id: json["id"],
      name: json["name"] ?? '',
      scientificName: json["scientific_name"] ?? '',
      image: json["image"] ?? '',
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      places: (json['place'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList());

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'scientific_name': scientificName,
      'image': image,
      'category': category.toJson(),
      'places': places.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return '{ "id": $id, "name": "$name", "scientific_name": "$scientificName", "image": "$image", "category": $category, "places": $places }';
  }
}
