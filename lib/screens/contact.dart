import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.contacts,
            size: 170.0,
            color: Colors.orangeAccent,
          ),
          Text("Tercera pantalla"),
        ],
      ),
    );
  }
}