import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  CampoTexto({Key key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  String _resposta = "";
  TextEditingController controller_alcool = TextEditingController();
  TextEditingController controller_gasolina = TextEditingController();
  void _calcular() {
    double val_alcool =
        double.tryParse(controller_alcool.text.replaceAll(',', '.'));
    double val_gasolina =
        double.tryParse(controller_gasolina.text.replaceAll(',', '.'));

    if ((val_alcool / val_gasolina) >= 0.7) {
      setState(() {
        _resposta = "Vai De Gasolina " +(val_alcool/val_gasolina ).toString();
      });
    } else {
      setState(() {
        _resposta = "Vai De Alcool "+(val_alcool/val_gasolina ).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcol ou Gasolina"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset("images/logo.png"),
                ),
                Text(
                  "Saiba qual é a melhor opção para seu carro",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    maxLength: 4,
                    onChanged: (String e) {},
                    controller: controller_alcool,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço do Alcool",
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontStyle: FontStyle.italic)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    maxLength: 4,
                    onChanged: (String e) {},
                    controller: controller_gasolina,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço do Gasolina",
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontStyle: FontStyle.italic)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: RaisedButton(
                    onPressed: _calcular,
                    child: Text(
                      "calcular",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _resposta,
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
