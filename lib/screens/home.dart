import 'dart:async';
import 'package:flutter/material.dart';
import '../util/dbhelper.dart';
import '../util/bouncypageroute.dart';
import 'archivelist.dart';
import 'dictionarypage.dart';
import 'resources.dart';

class Home extends StatefulWidget {
  Home({
    Key key,
  });

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[300],
      child: SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            title: new Text('Siggy v.1.0'),
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage('images/image.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.import_contacts),
                tooltip: 'Dictionary',
                onPressed: () {
                  Navigator.push(
                    context,
                    BouncyPageRoute(
                      widget: DictionaryPage(),
                      curve: Curves.elasticInOut,
                      seconds: 2,
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.assignment),
                tooltip: 'Resources',
                onPressed: () {
                  Navigator.push(
                    context,
                    BouncyPageRoute(
                      widget: Resources(),
                      curve: Curves.elasticInOut,
                      seconds: 2,
                    ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: ArchiveList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
