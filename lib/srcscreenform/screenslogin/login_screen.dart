import 'package:flutter/material.dart';

class login extends StatefulWidget {
  static const String routeName = '/loginscreen';
  @override
  loginState createState() => new loginState();
}

class loginState extends State<login> {
  //variable de tipo formstate, con la variable formkey obtenemos una referencia del formstate
  //cuando cambiamos datos a un input vamos a acceder a los mismos
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formkey, // pasamos la variable por parametro
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitField()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'example@dominio.com',
      ),
      validator: (value) {
        //print(value);
        if (!value!.contains('@')) {
          return 'Email Invalido';
        }
        //return 'Email invalido';
      },
      onSaved: (String? value) {
        print("Saved:" + value!);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      //margin: EdgeInsets.only(bottom: 25.0),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Ingrese su contraseña',
      ),
      validator: (value) {
        //print(value);
        if (value!.length < 6) {
          return 'Contraseña Invalidad';
        }
        //return 'contraseña invalida';
      },
      onSaved: (String? value) {
        print("Saved:" + value!);
      },
    );
  }

  Widget submitField() {
    return RaisedButton(
      child: Text("enviar"),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          //formkey.currentState?.validate();
          formkey.currentState?.save();
        }
      },
    );
  }
}
