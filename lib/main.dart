import 'package:devmovil/screens/screensnube/confirmacionnube.dart';
import 'package:devmovil/screens/screensnube/login_scrennnube.dart';
import 'package:devmovil/screens/screensnube/registrationscreennube.dart';
import 'package:devmovil/screens/screensnube/welcome_scrennsnube.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
      home: WelcomeScreenNube(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.indigo[400]),
        ),
      ),
      initialRoute: WelcomeScreenNube.routeName,
      routes: <String, WidgetBuilder>{
        LoginScreensNube.routeName: (BuildContext context) =>
            LoginScreensNube(),
        WelcomeScreenNube.routeName: (BuildContext context) =>
            WelcomeScreenNube(),
        registrationScreenNube.routeName: (BuildContext context) =>
            registrationScreenNube(),
        ConfirmacionNube.routeName: (BuildContext context) =>
            ConfirmacionNube(),
      }));
}
