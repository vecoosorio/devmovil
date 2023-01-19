import 'package:flutter/material.dart';

void main() {
  var principal = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Mi Primer App "),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Bienvenidos",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Le dio Click');
        },
      ),
    ),
  );
  runApp(principal);
}
