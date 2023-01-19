import 'package:devmovil/screens/screensnube/login_scrennnube.dart';
import 'package:devmovil/widgets/app_button.dart';
import 'package:devmovil/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class WelcomeScreenNube extends StatefulWidget {
  static const String routeName = "";
  @override
  _WelcomeScreenNubeState createState() => new _WelcomeScreenNubeState();
}

/*Widget getButton(
    MaterialAccentColor color, String name, VoidCallback onPressed) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      color: color,
      // color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0,
      child: SizedBox(
        height: 43.0,
        child: FlatButton(
          child: Text(name),
          onPressed: onPressed,
        ),
      ),
    ),
  );
}*/

class _WelcomeScreenNubeState extends State<WelcomeScreenNube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppIcon(),
            SizedBox(
              height: 40.0,
            ),
            AppButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              name: "Log In",
            ),
            AppButton(
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/Registration');
              },
              name: 'Register',
            )
            /*getButton(Colors.lightGreenAccent, "Log In", () {
              Navigator.pushNamed(context, "/login");
            }),
            getButton(Colors.blueAccent, "Register", () {})*/
          ],
        ),
      ),
    );
  }
}
