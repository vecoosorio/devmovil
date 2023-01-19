import 'package:devmovil/widgets/app_button.dart';
import 'package:devmovil/widgets/app_icon.dart';
import 'package:devmovil/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreensNube extends StatefulWidget {
  static const String routeName = "/login";

  @override
  _LoginScreensNubeState createState() => new _LoginScreensNubeState();
}

class _LoginScreensNubeState extends State<LoginScreensNube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppIcon(),
            SizedBox(height: 48.0),
            AppTextField(inputText: "Ingrese Email"),
            SizedBox(height: 8.0),
            AppTextField(inputText: "Ingresar Contraseña"),
            SizedBox(height: 23.0),
            AppButton(
              color: Colors.blueAccent,
              onPressed: () {},
              name: 'log In',
            )
          ],
        ),
      ),
    );
  }
}
