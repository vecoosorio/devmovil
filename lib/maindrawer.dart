import 'package:devmovil/home.dart';
import 'package:devmovil/scrensdrg/contact.dart';
import 'package:devmovil/scrensdrg/battery.dart';
import 'package:devmovil/scrensdrg/settings.dart';
import 'package:devmovil/srclistainfinita/infinita.dart';
import 'package:devmovil/srcpageview/pageview.dart';
import 'package:devmovil/srcscreenform/screenslogin/login_screen.dart';
import 'package:devmovil/srcscreenform/validationform.dart';
//import 'package:devmovil/srcnavigator/primary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: Home(),
      //Mapiamos las direcciones
      routes: <String, WidgetBuilder>{
        //pasamos los parametros
        Settings.routeName: (BuildContext context) => Settings(),
        Battery.routeName: (BuildContext context) => Battery(),
        Contact.routeName: (BuildContext context) => Contact(),
        Infinita.routeName: (BuildContext context) => Infinita(),
        pageview.routeName: (BuildContext context) => pageview(),
        validation.routeName: (BuildContext context) => validation(),
      }));
}
