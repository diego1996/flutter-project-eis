import 'package:flutter/material.dart';
import 'package:plants/models/plant.model.dart';
import 'package:plants/widgets/map.widget.dart';

class DetailPlant extends StatelessWidget {
  final Plant plant;

  const DetailPlant({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Planta Biodiversa"),
        ),
        body: ListView(children: <Widget>[
          Container(
              decoration: const BoxDecoration(color: Colors.blueGrey),
              margin: const EdgeInsets.only(),
              child: Column(
                children: <Widget>[
                  plant.image == ''
                      ? const Image(image: AssetImage('assets/no-image.png'))
                      : FadeInImage(
                      placeholder: const AssetImage('assets/loading.gif'),
                      image: NetworkImage(plant.image))
                  //CardImage("assets/img/medico.png"),
                ],
              )),
          Container(
            color: Colors.white,
            child: const Text(
              "Nombre de la planta",
              style: TextStyle(
                  //fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            color: Colors.white,
            child: Text(
              plant.name,
              style: const TextStyle(
                  //fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            color: Colors.white,
            child: const Text(
              "Categoria",
              style: TextStyle(
                  //fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            color: Colors.white,
            child: Text(
              plant.category.name,
              style: const TextStyle(
                  //fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
        ]));
  }
}
