import 'package:flutter/material.dart';
import 'package:youtube/telas/Bibliotecas.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Incricoes.dart';
import 'package:youtube/telas/Inicio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  List<Widget> telas=[
Inicio(),
EmAlta(),
Inscricoes(),
Biblioteca(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, opacity: .5),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_box), onPressed: () {}),
        ],
      ),
      body:  Container(
        padding: EdgeInsets.all(16),
        child: telas[_index]),
      
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          // type: BottomNavigationBarType.shifting,//modifica a barra
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                title: Text("Inicio"),
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                backgroundColor: Colors.greenAccent,
                title: Text("Em alta"),
                icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                backgroundColor: Colors.yellow,
                title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                backgroundColor: Colors.orange,
                title: Text("Boblioteca"),
                icon: Icon(Icons.folder)),
          ]),
    );
  }
}
