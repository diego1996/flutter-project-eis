class Place {
  int id;
  String name;
  double lat;
  double lng;

  Place({
    required this.id,
    required this.name,
    required this.lat,
    required this.lng,
  });

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        id: json["id"],
        name: json["name"] ?? '',
        lat: json["latitude"] ?? 0.0,
        lng: json["longitude"] ?? 0.0,
      );

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'lat': lat,
      'lng': lng,
    };
  }


  @override
  String toString() {
    return '{ "id": $id, "name": "$name", "lat": $lat, "lng": $lng }';
  }


}
