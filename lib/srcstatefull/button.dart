import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String textFlutter = "";
  int indice = 0;
  List<String> collections = ['Flutter', 'Framework', 'Dart', 'Google'];
  void onPressButton() {
    setState(() {
      textFlutter = collections[indice];
      indice = indice < 3 ? indice + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Statefull Widget'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Mostrar",
                  style: TextStyle(fontSize: 40.0),
                ),
                RaisedButton(
                  child: Text(
                    "Actualizar",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
