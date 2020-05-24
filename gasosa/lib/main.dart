import 'package:flutter/material.dart';
import 'package:gasosa/CampoTexto.dart';
import 'package:gasosa/EntradaCheckBox.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:CampoTexto()
    );
  }
}