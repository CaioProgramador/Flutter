import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _resultado = "aguardando";
  var imagemApp = [
    AssetImage("images/pedra.png"),
    AssetImage("images/papel.png"),
    AssetImage("images/tesoura.png"),
  ];
  var imageCup = AssetImage("images/padrao.png");

  void jogar(int index) {
    var rand = Random().nextInt(3);
    var vitoria;
    imageCup = imagemApp[rand];
    if (index == rand) {
      setState(() {
        _resultado="empate!!!";
      });//empate
    } else if (index == 0) {
      if (rand == 1) {
       setState(() {
        _resultado="Voce perdeu :(";
      }); //perdeu
      } else {
           setState(() {
        _resultado="Voce ganhou :)";
      });
        //ganhou
      }
    }
    else if (index == 1) {
      if (rand == 2) {
          setState(() {
        _resultado="Voce perdeu :(";
      });
        //perdeu
      } else {
           setState(() {
        _resultado="Voce ganhou :)";
      });
        //ganhou
      }
    }
    else if (index == 2) {
      if (rand == 0) {
          setState(() {
        _resultado="Voce perdeu :(";
      });
        //perdeu
      } else {
          setState(() {
        _resultado="Voce ganhou :)";
      });
        //ganhou
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Escolha do app",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Image(
              image: imageCup,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                _resultado,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: () => jogar(0),
                    child: Image(
                      image: imagemApp[0],
                      height: 10,
                    )),
                GestureDetector(
                    onTap: () => jogar(1),
                    child: Image(
                      image: imagemApp[1],
                      height: 10,
                    )),
                GestureDetector(
                    onTap: () => jogar(2),
                    child: Image(
                      image: imagemApp[2],
                      height: 10,
                    )),
              Image.asset("images/tesoura.png")
              ],
              
            )
            //linha//3 button
          ],
        ),
      ),
    );
  }
}
