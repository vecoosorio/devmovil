import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String? tittle;
  Second({this.tittle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enviar Datos"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Atras"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
/*class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {
  final String title;
  Second({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Atras"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}*/
