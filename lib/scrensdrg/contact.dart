import 'package:devmovil/screenscontact/contactitem.dart';
import 'package:devmovil/srclistas/model/contact_model.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = "/contact";
  //creamos metodo que envie el contactModel
  buildList() {
    return <ContactModel>[
      ContactModel(name: "Rodrigo Morales", email: "rmorales@gmail.com"),
      ContactModel(name: "Naylet Andres", email: "randres@gmail.com"),
      ContactModel(name: "Carlos Andres", email: "candres@gmail.com"),
      ContactModel(name: "Antonio Julca", email: "ajulca@gmail.com"),
      ContactModel(name: "Luis Torres", email: "ltorres@gmail.com"),
      ContactModel(name: "Angela Alor", email: "aalor@gmail.com"),
    ];
  }

  //devolvemos una lsta de contactItem
  List<ContactItem> builContactList() {
    return buildList()
        //funcion map Recorre todo los elementos de un datasource
        .map<ContactItem>((contact) => ContactItem(contact: contact))
        .toList(); //pasamos una lista
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: ListView(
        // children: <Widget>[ContactItem()],
        children: builContactList(),
      ),
    );
  }
}
