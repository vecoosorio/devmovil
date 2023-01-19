import 'package:devmovil/widgets/app_button.dart';
import 'package:devmovil/widgets/app_icon.dart';
import 'package:devmovil/widgets/app_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class registrationScreenNube extends StatefulWidget {
  static const String routeName = "/Registration";
  @override
  _registrationScreenNubeState createState() =>
      new _registrationScreenNubeState();
}

class _registrationScreenNubeState extends State<registrationScreenNube> {
  final auth = FirebaseAuth.instance; //crea un objeto
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppIcon(),
            SizedBox(height: 48.0),
            AppTextField(
              inputText: "Registrar Email",
              onChanged: (value) {
                email = value;
                print('Email $email');
              },
            ),
            SizedBox(height: 8.0),
            AppTextField(
              inputText: "Registrar Contraseña",
              obscureText: true,
              onChanged: (value) {
                password = value;
                print('password $password');
              },
            ),
            SizedBox(height: 24.0),
            AppButton(
              color: Colors.blueAccent,
              onPressed: () {
                try {
                  var newuser = auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newuser != null) {
                    Navigator.pushNamed(context, '/confirmacion');
                  }
                } catch (e) {
                  print(e);
                }
              },
              name: "Registrarse",
            )
          ],
        ),
      ),
    );
  }
}
