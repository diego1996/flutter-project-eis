import 'package:flutter/material.dart';
import 'package:plants/models/plant.model.dart';
import 'package:plants/pages/detail.page.dart';
import 'package:plants/pages/main.page.dart';
import 'package:plants/widgets/button.list.widget.dart';
import 'package:plants/widgets/card.widget.dart';

class ListViewWidget extends StatelessWidget {
  final List<Plant> plants;

  const ListViewWidget({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardWidget> listCards = [];

    for (var plant in plants) {
      listCards.add(CardWidget(plant: plant));
    }

    return ListView(
      children: listCards,
    );

  }

}
