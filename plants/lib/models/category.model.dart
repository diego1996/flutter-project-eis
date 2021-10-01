class Category {
  int id;
  String name;
  String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"] ?? '',
        image: json["image"] ?? '',
      );

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  @override
  String toString() {
    return '{ "id": $id, "name": "$name", "image": "$image" }';
  }

}
