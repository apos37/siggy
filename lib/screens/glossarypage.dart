import 'package:flutter/material.dart';
import '../dictionary/glossarylist.dart';

class GlossaryPage extends StatefulWidget {
  GlossaryPage({
    Key key,
  });

  @override
  _GlossaryPageState createState() => _GlossaryPageState();
}

class _GlossaryPageState extends State<GlossaryPage> {
  @override
  Widget build(BuildContext context) {
    var glossary = Glossary();
    glossary.sort();

    return Container(
      color: Colors.teal[300],
      child: SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            title: new Text('Glossary'),
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
                icon: const Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () {
                  showSearch(context: context, delegate: GlossarySearch());
                },
              ),
              IconButton(
                icon: const Icon(Icons.close),
                tooltip: 'Go Back',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.builder(
              itemCount: glossary.getCount(),
              itemBuilder: (BuildContext context, int index) {
                // return row
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        glossary.getSpecificItem(index) + ':',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        glossary.getSpecificDefinition(index),
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
          ),
        ),
      ),
    );
  }
}

class GlossarySearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var glossary = Glossary();
    glossary.sort();
    // show some result based on the selection
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: glossary.getQueryCount(query),
                itemBuilder: (BuildContext context, int index) {
                  return new ListTile(
                    onTap: () {
                      showResults(context);
                    },
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            glossary.getQueryItem(query, index) + ':',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            glossary.getQueryDefinition(query, index),
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var glossary = Glossary();
    glossary.sort();

    int queryCount;
    if (query.isEmpty) {
      queryCount = 0;
    } else {
      queryCount = glossary.getQueryCount(query);
    }

    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: queryCount,
            itemBuilder: (BuildContext context, int index) {
              return new ListTile(
                onTap: () {
                  showResults(context);
                },
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        glossary.getQueryItem(query, index) + ':',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        glossary.getQueryDefinition(query, index),
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
