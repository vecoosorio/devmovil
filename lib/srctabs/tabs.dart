import 'package:devmovil/screens/contact.dart';
import 'package:devmovil/screens/home.dart';
import 'package:devmovil/screens/video.dart';
import 'package:flutter/material.dart';

class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  @override
  State<tabs> createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Video Tabs [UNJFSC]'),
          backgroundColor: Colors.orangeAccent,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.ondemand_video),
              ),
              Tab(
                icon: Icon(Icons.contacts),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Home(),
          Video(),
          Contact(),
        ]),
      ),
    );
  }
}
