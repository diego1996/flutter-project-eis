
import 'package:flutter/material.dart';
import 'package:plants/widgets/button.list.widget.dart';
class Principal extends StatelessWidget{
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
                children: [],
              ),
            ),
          ],


        ),


        //DescriptionPlace('Quicksalud', 'Aqui en quicksalud queremos ser los mejores prestadores de servicio en el tema de medicina',5)
      ],
    );
  }

}
