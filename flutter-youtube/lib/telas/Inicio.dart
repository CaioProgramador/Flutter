import 'package:flutter/material.dart';
import 'package:youtube/API.dart';
import 'package:youtube/model/Videos.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos() {
   
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Videos>>(
      future:  _listarVideos(),
      builder: null);
  }
}
