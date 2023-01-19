import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Drawer getDrawer(BuildContext context) {
    var header = DrawerHeader(child: Text("Ajustes"));
    var info = AboutListTile(
      child: Text("Informacion APP"),
      applicationIcon: Icon(Icons.favorite),
      icon: Icon(Icons.info),
    );

    ListTile getItem(Icon icon, String descripcion, String route) {
      return ListTile(
        leading: icon,
        title: Text(descripcion),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList() {
      return ListView(
        children: <Widget>[
          header,
          getItem(Icon(Icons.settings), 'Configuracion', '/configuracion'),
          getItem(Icon(Icons.home), 'Pagina Principal', ''),
          getItem(Icon(Icons.battery_charging_full), 'Bateria', '/bateria'),
          getItem(Icon(Icons.contact_mail), 'Contact', '/contact'),
          getItem(Icon(Icons.shopping_cart), 'Infinita', '/infinita'),
          getItem(Icon(Icons.pageview), 'PageView', '/pageviewcolors'),
          getItem(Icon(Icons.login_rounded), 'Login', '/validation'),
          info
        ],
      );
    }

    return Drawer(
      child: getList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina principal"),
      ),
      drawer: getDrawer(context),
      //drawer: Drawer(child: getList()),
    );
  }
}
