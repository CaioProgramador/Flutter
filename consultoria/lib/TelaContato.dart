import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  TelaContato({Key key}) : super(key: key);

  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"), backgroundColor: Colors.lightGreen,
        ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_contato.png"),
                Text(
                  " Contaro",
                  style: TextStyle(color: Colors.lightGreen),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("E-mail:     consultoria@atm.com")),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("telefone: +55 41 3353-3535")),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("celular +55 41 99941-9191"))
              ],
            )
          ],
        ),
      ),
    );
  }
}