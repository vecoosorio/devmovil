import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => new _MyDialogState();
}

enum DialogAction { yes, no }

class _MyDialogState extends State<MyDialog> {
  void alertResult(DialogAction action) {
    print("tu seleccion es $action");
  }

  void showAlert() {
    AlertDialog dialog = AlertDialog(
      content: Text("Alert"),
      actions: <Widget>[
        FlatButton(
            child: Text("Si"),
            onPressed: () {
              alertResult(DialogAction.yes);
            }),
        FlatButton(
            child: Text("No"),
            onPressed: () {
              alertResult(DialogAction.no);
            }),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Alert Dialog"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese Nombre"),
            ),
            RaisedButton(child: Text("Ver Alerta"), onPressed: showAlert),
          ],
        ),
      ),
    );
  }
}
