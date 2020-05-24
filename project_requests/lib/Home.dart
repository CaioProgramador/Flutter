import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cep;
  String _logradouro = "";
  String _bairro = "";

  void _recuperarCep(String c) async {
    http.Response response;
    String cc = c;

    //response = await http.get("http://viacep.com.br/ws/${cep}/json/");
    String url = "http://viacep.com.br/ws/${cc}/json/";

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    _logradouro = retorno["logradouro"];
     _bairro = retorno["bairro"];
    print(url);
    print(cc);
    print(response.body);
    setState(() {
      
    });

    // print(response.statusCode.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Requests"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String cp) {
                cep = cp;
                print(cep);
              },
            ),
            RaisedButton(
              child: Text("Buscar"),
              onPressed: () {
                _recuperarCep(cep);
              },
            ),
            Text("logradouro ${_logradouro}"),
            Text("bairo ${_bairro}")
          ],
        ),
      ),
    );
  }
}
