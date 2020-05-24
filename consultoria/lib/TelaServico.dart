import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  TelaServico({Key key}) : super(key: key);

  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Servicos"),
         backgroundColor: Colors.blueAccent
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_servico.png"),
                Text(
                  " Nossos Serviços",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Consultoria")),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Calculos")),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Acompanhamentos"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
