import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Homestateful()));
}

class Homestateful extends StatefulWidget {
  @override
  _HomestatefulState createState() => _HomestatefulState();
}

class _HomestatefulState extends State<Homestateful> {
   var _nomeBotao = "clique!!";
    var _titulo = "insta";
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("corpos"),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                _nomeBotao = "cliacado!!";
              });
            }, 
            child: Text(_nomeBotao),
          )
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _titulo = "insta";
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("corpo"),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.greenAccent,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[Text("text1"), Text("text2")],
            ),
          )),
    );
  }
}
