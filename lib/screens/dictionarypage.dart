import 'package:flutter/material.dart';
import '../dictionary/dictionaryprops.dart';
import '../dictionary/observations.dart';
import '../widgets/learnmore.dart';

//Call dictionaries
DictionaryProperties dictionaryProperties = DictionaryProperties();
Observations observations = Observations();

String dropdownValue = 'View All';

class DictionaryPage extends StatefulWidget {
  DictionaryPage({
    Key key,
  });

  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  Widget showTitleDescription(index) {
    LearnMoreButton learnMoreButton = LearnMoreButton(index);
    var results;
    if (dictionaryProperties.getSpecificDescription(index) != '') {
      results = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              dictionaryProperties.getSpecificName(index),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          learnMoreButton,
        ],
      );
    } else {
      results = Text(
        dictionaryProperties.getSpecificName(index),
        style: Theme.of(context).textTheme.title,
      );
    }
    return results;
  }

  final _categories = [
    'View All',
    'Line Spacing',
    'Word Spacing',
    'Letter Spacing',
    'Margins',
    'Baseline',
    'Zones - General',
    'Zones - Upper',
    'Zones - Middle',
    'Zones - Lower',
    'Rhythm - General',
    'Rhythm - Tension/Pressure',
    'Rhythm - Speed',
    'Rhythm - Impulse Patterns/Airstrokes',
    'Rhythm - Form',
    'Rhythm - Slant',
    'Style',
    'Signature - General',
    'Signature - Size',
    'Signature - Style',
    'Signature - Capitals',
    'Personal pronoun I (PPI)',
    'Beginning & Ending Strokes',
    'Punctuation',
    'Hooks',
    'Diacritics - i-Dots',
    'Diacritics - t-Crosses',
    'Other Letters & Symbols',
    'Danger Signs'
  ];

  Widget printDefinitions(indexArg) {
    return ListView.builder(
      itemCount: observations
          .getCategoryCount(dictionaryProperties.getSpecificCategory(indexArg)),
      itemBuilder: (BuildContext context, int index) {
        // return row
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                observations.getCategorySpecificFinding(
                        dictionaryProperties.getSpecificCategory(indexArg),
                        index) +
                    ':',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                observations.getCategorySpecificMeaning(
                    dictionaryProperties.getSpecificCategory(indexArg), index),
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
    );
  }

  Widget changeCategory() {
    var results;
    if (dropdownValue == 'View All') {
      results = Expanded(
        child: Container(
          decoration: new BoxDecoration(color: Colors.teal[100]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: dictionaryProperties.getCount() - 1,
                    itemBuilder: (BuildContext context, int index) {
                      index++;
                      int parentIndex = index;
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              showTitleDescription(index),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 15.0),
                                child: Container(
                                  height: 1.0,
                                  width: 130.0,
                                  color: Colors.teal[300],
                                ),
                              ),
                              printDefinitions(parentIndex),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else if (dropdownValue == 'Danger Signs') {
      results = Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Danger Signs',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Icon(
                              Icons.warning,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.teal[300],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: observations.getDangerSigns().length,
                      itemBuilder: (BuildContext context, int index) {
                        // return row
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                observations.getDangerSignFinding(index) + ':',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                observations.getDangerSignMeaning(index),
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
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      int parentIndex = dictionaryProperties.getDictionaryId(dropdownValue);
      results = Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  showTitleDescription(parentIndex),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.teal[300],
                    ),
                  ),
                  Expanded(
                    child: printDefinitions(parentIndex),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[300],
      child: SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            title: new Text('Meanings'),
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
                  showSearch(context: context, delegate: DataSearch());
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
          body: Container(
            color: Colors.teal[100],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, top: 8.0, right: 12.0, bottom: 4.0),
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      /*border: Border.all(color: Colors.teal, width: 1.0)*/
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.5, // soften the shadow
                          spreadRadius: 0.25, //extend the shadow
                          offset: Offset(
                            0.25, // Move to right 10  horizontally
                            0.5, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: DropdownButtonFormField<String>(
                      items: _categories.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
//                    decoration: InputDecoration.collapsed(hintText: ''),
                      isDense: true,
                      value: dropdownValue,
                      onChanged: (String newValue) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                    ),
                  ),
                ),
                changeCategory(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
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
                itemCount: observations.getQueryCount(query),
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
                            observations.getQueryFinding(query, index) + ':',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            observations.getQueryMeaning(query, index),
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
    // show when someone searches for anything
//    final suggestionList = query.isEmpty
//        ? observations.getFindings(query).toList()
//        : observations.getFindings(query).toList();
    int queryCount;
    if (query.isEmpty) {
      queryCount = 0;
    } else {
      queryCount = observations.getQueryCount(query);
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
                        observations.getQueryFinding(query, index) + ':',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        observations.getQueryMeaning(query, index),
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
