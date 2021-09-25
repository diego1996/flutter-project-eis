
import 'package:flutter/material.dart';




class DetailPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,

        appBar:AppBar(
          backgroundColor: Colors.green,
          title: const Text("Planta Biodiversa"),
        ),
        body:
        Container(

          //height: 250.0,
            child: ListView(

                children: <Widget>[

                  Container(
                    color: Colors.white,
                    child: const Text(
                      "Datos",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 38.0,
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                      decoration: new BoxDecoration(color: Colors.blueGrey),
                      margin: EdgeInsets.only(),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 160.0,
                              width: 200.0,
                              margin: const EdgeInsets.only(
                                top: 30.0,
                                left: 20.0,
                                right: 20.0,
                                bottom: 20,
                              ),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/planta.png")),
                                //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),

                          //CardImage("assets/img/medico.png"),
                        ],
                      )),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "Nombre de la planta",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "Planta 1",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "Descripción",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "lorempouenlo rempousen lorempousen lorempousen  ",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "Categoria",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "Categoría 1",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "Lugar",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    color:Colors.white,
                    child: const Text(
                      "(-1.45, 7.42)",
                      style: TextStyle(
                        //fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),







                ]
            )
        )

    );
  }


}