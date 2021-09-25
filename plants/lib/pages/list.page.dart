
import 'package:flutter/material.dart';
import 'package:plants/widgets/button.list.widget.dart';
class Listado extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[




            Container(

                decoration: new BoxDecoration(color: Colors.blueGrey),
                margin:const EdgeInsets.only(


                ),
                child: Column(
                  children: [
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
        method: () {

        },
      ),
      ButtonPlant(
        title: "Planta",
        icon: "assets/planta.png",
        color: Colors.black12,
        method: () {

        },
      ),
      ButtonPlant(
        title: "Planta",
        icon: "assets/planta.png",
        color: Colors.black12,
        method: () {

        },
      ),


    ];
  }

}

