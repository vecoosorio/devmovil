import 'package:flutter/material.dart';

class myapp extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);

  @override
  //metodo BUILD devuelve un widget
  Widget build(BuildContext context) {
    return Scaffold(
      //Contruye una barra superior
      appBar: AppBar(
        title: Text("Proyecto Stateless Widget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /*MyCard(
              title
            )*/
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Call Firefighter",
                      //style: TextStyle(color: Colors.grey, fontSize: 30.0),
                    ),
                    Icon(Icons.phone_callback_outlined,
                        color: Colors.blueAccent.shade400, size: 40.0),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Archivos",
                      style: textStyle,
                    ),
                    Icon(Icons.attach_file,
                        color: Colors.blue.shade200, size: iconSize)
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Descarga",
                      style: textStyle,
                    ),
                    Icon(Icons.archive, color: Colors.indigo, size: iconSize)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
