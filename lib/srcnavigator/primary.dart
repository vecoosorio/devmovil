import 'package:flutter/material.dart';
import 'package:devmovil/srcnavigator/second.dart';

class Primary extends StatefulWidget {
  @override
  _PrimaryState createState() => new _PrimaryState();
}

class _PrimaryState extends State<Primary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera Pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Second Pantalla"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Second(
                          tittle: "Enviar Datos",
                        )));
          },
        ),
      ),
    );
  }
}
