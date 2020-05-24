import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> frases = ["primeira", "segunda", "terceira", "quarta"];
  var frase = "Clique para gerar uma frase";

  void gerarfrase() {
    setState(() {
      frase = frases[Random().nextInt(frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("frases do diaaaaa"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                frase,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
              RaisedButton(
                child: Text(
                  "nova frase",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: () {
                  gerarfrase();
                },
                color: Colors.green,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
