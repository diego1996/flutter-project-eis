import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
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
                decoration: new BoxDecoration(color: Colors.white),
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: FlatButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: const Text(
                          'PLANTA BIODIVERSA',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    const SizedBox(
                      height: 100,
                      width: 400,
                      child: Text(
                        'Planta Biodiversa es una aplicación, que nacio con la idea de '
                        'poder mostrarle a las personas, la ubicación de plantas exoticas,'
                        'y raras en su especie, '
                        ',Planta Biodiversa es una aplicación, que nacio con la idea de '
                        'poder mostrarle a las personas, la ubicación de plantas exoticas,'
                        'y raras en su especie.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 1),
                    SizedBox(
                      height: 140,
                      width: 400,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 160.0,
                            color: Colors.red,
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.blue,
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.green,
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'CREDITOS',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ),

                    //CardImage("assets/img/medico.png"),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
