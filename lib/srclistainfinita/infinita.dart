import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';

class Infinita extends StatefulWidget {
  static const String routeName = "/infinita";
  @override
  _InfinitaState createState() => new _InfinitaState();
}

class _InfinitaState extends State<Infinita> {
  //suggestions:Variable de sugerencia de tipo lista
  //WordPair:Clase de conbinancion de dos palabras
  final suggestions = <WordPair>[];
  //guardamos cada elemento que le hacemos click
  final saved = <WordPair>[];

  ListTile buildRow(WordPair pair) {
    return ListTile(
      trailing: Icon(Icons.shopping_cart),
      //leading: Icon(Icons.shopping_cart),
      title: Text(pair.asPascalCase), //toma el valor de diferentes formatos
      onTap: () {
        setState(() {
          //funcion que renderiza los widget
          saved.add(pair); //agrega un elemento a la lista
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    void pushSaved() {
      //permite ir a una pantalla especifica
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        final Title = saved
            //metodo map convierte un set de datos a un listitle y recibe un titulo
            //pair: toma el primer elemento
            .map((pair) => ListTile(
                  title: Text(pair.asPascalCase),
                ))
            .toList();
        return Scaffold(
          appBar: AppBar(
            title: Text("Guardados"),
          ),
          body: ListView(
            children: Title,
          ),
        );
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Infinita"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: pushSaved,
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        //si el elemento es impar llama al widget divider() construye una linea en cada fila
        if (i.isOdd) return Divider();
        if (i >= suggestions.length) {
          //funcion addAll puede agregar mas de un elemento a una lista
          //funcion generateWordPairs tomanos 10 elementos del tipo word pairs
          //tomamos 10 palabras compuestas y lo agregamos a la coleccion
          suggestions.addAll(generateWordPairs().take(10));
        }
        return buildRow(suggestions[i]);
        //ListTile(
        //leading: Icon(Icons.shopping_cart),
        //title: Text('Producto $i'),
        //subtitle: Text('Precio:${Random().nextInt(500)}USD)'),
        //);
      }),
    );
  }
}
