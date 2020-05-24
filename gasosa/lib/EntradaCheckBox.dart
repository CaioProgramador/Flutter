import 'dart:html';

import 'package:flutter/material.dart';

class CheckBX extends StatefulWidget {
  CheckBX({Key key}) : super(key: key);

  @override
  _CheckBXState createState() => _CheckBXState();
}

class _CheckBXState extends State<CheckBX> {
  bool selected = false;
  var valor = false;
  double valorSlide = 0;

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CheckBox"),
        ),
        body: Container(
          child: Column(children: <Widget>[
            CheckboxListTile(
              value: selected,
              onChanged: (bool e) {
                setState(() {
                  selected = e;
                });
              },
              title: Text(
                "Comida",
              ),
              secondary: Icon(Icons.add_box),
              selected: selected,
            ),
            //
            //
            Switch(
                value: valor,
                onChanged: (val) {
                  setState(() {
                    valor = val;
                  });
                }),
                //
                //
            SwitchListTile(
                title: Text("selested"),
                value: valor,
                onChanged: (val) {
                  setState(() {
                    valor = val;
                  });
                }),
                Text(valorSlide.ceil().toString()),
                //
                //
            Slider(label:valorSlide.ceil().toString() ,
              divisions: 10,
              value: valorSlide,
            min:0,
            max:20,
             onChanged: (val){setState(() {
               valorSlide=val;
             });

             })
          ]),
        ),
      ),
    );
  }
}
