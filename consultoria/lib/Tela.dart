
import 'package:consultoria/TelaClientes.dart';
import 'package:consultoria/TelaContato.dart';
import 'package:consultoria/TelaEmpresa.dart';
import 'package:consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

//void main() => runApp(Tela());

class Tela extends StatefulWidget {
  Tela({Key key}) : super(key: key);

 

  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
   void CarregarTela(var tela){
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => tela),
  );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
              child: Container( 
          padding: const EdgeInsets.all(50),
          
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          CarregarTela(TelaEmpresa());
                          print ("apertei");
                        },
                        child: Image.asset(
                          "images/menu_empresa.png",
                          height: 100,
                        )),
                    GestureDetector(
                        onTap: () {CarregarTela(TelaServico());},
                        child: Image.asset(
                          "images/menu_servico.png",
                          height: 100,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {CarregarTela(TelaClientes());},
                        child: Image.asset(
                          "images/menu_cliente.png",
                          height: 100,
                        )),
                    GestureDetector(
                        onTap: () {CarregarTela(TelaContato());},
                        child: Image.asset(
                          "images/menu_contato.png",
                          height: 100,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
