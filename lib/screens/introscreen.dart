import 'package:flutter/material.dart';
import 'home.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Please read the following before you begin using our App:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Text(
                      'This app was designed to make it easier to identify patterns in handwriting. It does not analyze the handwriting for you. The results generated include ALL of the items that you select in your observations, and simply provides meanings for each of them. You will need to analyze them on your own.\n\nWhen evaluating handwriting samples, look for patterns that occur a large number of times. Then when you are finished, look for patterns in the meanings to come up with a generalized conclusion. For example, if the majority of findings say that the person is well-balanced, it is a good idea to keep it at that.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child:
                          Text('Get Started!', style: TextStyle(fontSize: 20)),
                      textColor: Colors.white,
                      color: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            new MaterialPageRoute(
                                builder: (context) => new Home()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
