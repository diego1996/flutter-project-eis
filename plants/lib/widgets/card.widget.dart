import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plants/models/plant.model.dart';
import 'package:plants/pages/detail.page.dart';

class CardWidget extends StatelessWidget {
  final Plant plant;

  const CardWidget({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPlant(plant: plant)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              plant.image == ''
                  ? const Image(image: AssetImage('assets/no-image.png'))
                  : FadeInImage(
                      placeholder: const AssetImage('assets/loading.gif'),
                      image: NetworkImage(plant.image)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  plant.name,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
