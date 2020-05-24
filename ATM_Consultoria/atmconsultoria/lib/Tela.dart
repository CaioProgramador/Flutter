import 'package:flutter/material.dart';

void main() => runApp(Tela());

class Tela extends StatefulWidget {
  Tela({Key key}) : super(key: key);

  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("ATM Consultoria"),
      
      
      ),
body: Row(),
    );
  }
}
