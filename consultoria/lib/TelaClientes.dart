import 'package:flutter/material.dart';

class TelaClientes extends StatefulWidget {
  TelaClientes({Key key}) : super(key: key);

  @override
  _TelaClientesState createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_cliente.png"),
                Text(
                  " Clientes",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("images/cliente1.png"),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Empresa Software")),
                Image.asset("images/cliente2.png"),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Empresa auditorias"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
