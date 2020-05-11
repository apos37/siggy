import 'package:flutter/material.dart';
import 'package:graphologyapp/dictionary/dictionaryprops.dart';

DictionaryProperties dictionaryProperties = DictionaryProperties();

class LearnMoreButton extends StatelessWidget {
  final int currentPage;

  LearnMoreButton(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Widget okButton = FlatButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        );
        AlertDialog meaningDialog = AlertDialog(
            title: Text(
              dictionaryProperties.getSpecificName(currentPage) + ':',
              style: Theme.of(context).textTheme.headline6,
            ),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    dictionaryProperties.getSpecificDescription(currentPage),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            actions: [
              okButton,
            ]);
        showDialog(
          context: context,
          builder: (_) => meaningDialog,
        );
      },
      child: FlatButton.icon(
        onPressed: () {
          Widget okButton = FlatButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          );
          AlertDialog alertDialog = AlertDialog(
              title: Text(
                dictionaryProperties.getSpecificName(currentPage) + ':',
                style: Theme.of(context).textTheme.headline6,
              ),
              content: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.asset('images/examples/example_$currentPage.png'),
                    SizedBox(height: 15),
                    Text(
                      dictionaryProperties.getSpecificInstructions(currentPage),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              actions: [
                okButton,
              ]);
          showDialog(
            context: context,
            builder: (_) => alertDialog,
          );
        },
        label: Text(
          'Learn more!',
          style: TextStyle(color: Colors.teal),
        ),
        icon: Icon(
          Icons.info,
          color: Colors.teal,
        ),
      ),
    );
  }
}
