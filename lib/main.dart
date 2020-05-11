import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/animation.dart';
import 'screens/introscreen.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: new Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Timer(
        Duration(milliseconds: 1100),
        () => Navigator.pushReplacement(
            context, new MaterialPageRoute(builder: (context) => new Home())),
      );
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new IntroScreen()));
    }
  }

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(seconds: 1), () {
      checkFirstSeen();
    });
    animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    animation = Tween(begin: 1.5, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));

    animationController.forward();

//    new Timer(new Duration(seconds: 2), () {
//      animationController.reverse();
//    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white,
                child: AnimatedBuilder(
                  animation: animationController,
                  builder: (BuildContext context, Widget child) {
                    return Transform(
                      transform: Matrix4.translationValues(
                          0.0, animation.value * width, 0.0),
                      child: Container(
                        child: Image.asset('images/logo.png'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
