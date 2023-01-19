import 'package:flutter/material.dart';

class pageview extends StatelessWidget {
  static const String routeName = "/pageviewcolors";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(itemBuilder: (context, index) {
        return Container(
          color: index % 2 == 0 ? Colors.pink : Colors.cyan,
        );
      }
          /* children: <Widget>[
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.deepOrange,
          )
        ],*/
          ),
    );
  }
}
