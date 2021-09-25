import 'package:flutter/material.dart';
import 'package:plants/pages/detail.page.dart';
import 'package:plants/pages/main.page.dart';
import 'package:plants/widgets/button.list.widget.dart';

class Listado extends StatelessWidget {
  const Listado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(color: Colors.white),
              margin: const EdgeInsets.only(),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonPlant(
                          title: "Planta",
                          icon: "assets/planta.png",
                          color: Colors.black12,
                          method: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPlant()),
                            );
                          },
                        ),
                        ButtonPlant(
                          title: "Planta",
                          icon: "assets/planta.png",
                          color: Colors.black12,
                          method: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Principal()),
                            );
                          },
                        ),
                        ButtonPlant(
                          title: "Planta",
                          icon: "assets/planta.png",
                          color: Colors.black12,
                          method: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Principal()),
                            );
                          },
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotonesFila9()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotonesFila9()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotonesFila9()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotonesFila9()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotonesFila9()),
                ],
              ),
            ),
          ],
        ),

        //DescriptionPlace('Quicksalud', 'Aqui en quicksalud queremos ser los mejores prestadores de servicio en el tema de medicina',5)
      ],
    );
  }

  _listaBotonesFila9() {
    return [
      ButtonPlant(
        title: "Planta",
        icon: "assets/planta.png",
        color: Colors.black12,
        method: () {},
      ),
      ButtonPlant(
        title: "Planta",
        icon: "assets/planta.png",
        color: Colors.black12,
        method: () {},
      ),
      ButtonPlant(
        title: "Planta",
        icon: "assets/planta.png",
        color: Colors.black12,
        method: () {},
      ),
    ];
  }
}
