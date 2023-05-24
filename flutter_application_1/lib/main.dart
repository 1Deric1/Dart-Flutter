import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Hora de Aventura",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String textr = "A melhor frase do seu dia!!";

  @override
  Widget build(BuildContext context) {
    var rand = null;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 43, 90),
        title: Text(
          "AppHome",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 100,
            child: "assets/images/londres.jpg".isNotEmpty
                ? Image.asset(
                    "assets/images/londres.jpg",
                    width: 200,
                    height: 200,
                  )
                : Container(),
          ),
          Positioned(
            top: 50,
            right: 0,
            left: 0,
            bottom: 0,
            child: Text(
              textr,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Positioned(
            top: 640,
            right: 50,
            left: 50,
            bottom: 30,
            child: ElevatedButton.icon(
                onPressed: () {
                  rand = Random().nextInt(5);
                  switch (rand) {
                    case 0:
                      setState(() {
                        textr =
                            "O fracasso é apenas uma oportunidade para começar de novo, desta vez com mais experiência.";
                      });
                      break;
                    case 1:
                      setState(() {
                        textr =
                            "O fracasso é apenas uma oportunidade para começar de novo, desta vez com mais experiência.";
                      });
                      break;
                    case 2:
                      setState(() {
                        textr =
                            "Nunca desista de um sonho só por causa do tempo que levará para realizá-lo. O tempo vai passar de qualquer forma.";
                      });
                      break;
                    case 3:
                      setState(() {
                        textr =
                            "Acredite em si mesmo e em tudo que você é. Saiba que há algo dentro de você que é maior do que qualquer obstáculo.";
                      });
                      break;
                    case 4:
                      setState(() {
                        textr =
                            "O sucesso é a soma de pequenos esforços repetidos dia após dia.";
                      });
                      break;
                    case 5:
                      setState(() {
                        textr =
                            "O fracasso é apenas uma oportunidade para começar de novo, desta vez com mais experiência.";
                      });
                      break;
                    default:
                      setState(() {
                        textr = "erro ao selecionar o numero";
                      });
                      break;
                  }
                },
                icon: Icon(Icons.message),
                style: ButtonStyle(
                  //ElevatedButton.styleFrom(primary: Colors.black)
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
                label: Text(
                  "Girar",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        //height: 10, //Aumenta o tamanho do footer
        child: Row(
          children: <Widget>[
            Text(
              "OP1",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        color: Color.fromARGB(255, 1, 43, 90),
      ),
    );
  }
}
