import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../model/myarchive.dart';
import '../util/dbhelper.dart';
import '../screens/myarchivedetail.dart';
import 'package:flutter/animation.dart';
//import 'package:graphologyapp/util/utility.dart';

class ArchiveList extends StatefulWidget {
  @override
  _ArchiveListState createState() => _ArchiveListState();
}

//class ArchiveListState extends State
class _ArchiveListState extends State<ArchiveList>
    with SingleTickerProviderStateMixin {
  DbHelper helper = DbHelper();
  List<Archive> archives;
  int count = 0;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    animation = Tween(begin: 1.5, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));

    new Timer(new Duration(seconds: 2), () {
      animationController.forward();
    });
  }

  Future<String> getArchiveCount() async {
    String countString = count.toString();
    if (count != 1) {
      return 'You have ' + countString + ' handwriting samples';
    } else {
      return 'You have ' + countString + ' handwriting sample';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (archives == null) {
      archives = List<Archive>();
      getData();
    }
    return Scaffold(
      body: showArchivesIfAny(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[300],
        onPressed: () {
          navigateToDetail(Archive('', '', '', '', '', ''));
        },
        tooltip: 'Add new archive',
        child: new Icon(Icons.add),
      ),
    );
  }

  Widget showArchivesIfAny() {
    if (count > 0) {
      return archiveListItems();
    } else {
      return noArchives();
    }
  }

  Widget noArchives() {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        SizedBox(height: 4),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext context, Widget child) {
                  return Transform(
                    transform: Matrix4.translationValues(
                        0.0, animation.value * width, 0.0),
                    child: Container(
                      child: Image.asset(
                        'images/addfirstarchive.png',
                        height: 200,
                      ),
                    ),
                  );
                },
              ),
//              Center(
//                  child: Image.asset(
//                'images/addfirstarchive.png',
//                height: 200,
//              )),
              SizedBox(height: 23),
            ],
          ),
        ),
      ],
    );
  }

  Widget archiveListItems() {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          color: Colors.teal[300],
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: new FutureBuilder(
            future: getArchiveCount(),
            initialData: "Loading archives..",
            builder: (BuildContext context, AsyncSnapshot<String> text) {
              return new Text(
                text.data,
                style: new TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 4),
        Expanded(
          child: Container(
            height: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: ListView.builder(
                itemCount: count,
                itemBuilder: (BuildContext context, int position) {
                  final archiveName = this.archives[position].displayName;
                  String archiveTitle() {
                    var results;
                    String showSeparator = '';
                    String showGender = '';
                    String showComma = '';
                    String showAge = '';

                    if (this.archives[position].gender != '' ||
                        this.archives[position].age != '') {
                      showSeparator = ' - ';
                    }
                    if (this.archives[position].gender != '') {
                      showGender = this.archives[position].gender;
                    }
                    if (this.archives[position].gender != '' &&
                        this.archives[position].age != '') {
                      showComma = ', ';
                    }
                    if (this.archives[position].age != '') {
                      showAge = this.archives[position].age;
                    }
                    results = this.archives[position].displayName +
                        showSeparator +
                        showGender +
                        showComma +
                        showAge;
                    return results;
                  }

                  String archiveSubTitle() {
                    var results;
                    String showSampleSize = '';

                    if (this.archives[position].type != '') {
                      showSampleSize =
                          this.archives[position].type + ' SAMPLE: ';
                    }
                    results = showSampleSize + this.archives[position].date;
                    return results;
                  }

//                  CircleAvatar showSampleImage() {
//                    if (this.archives[position].imageThumb != null) {
//                      return CircleAvatar(
//                        backgroundImage: Utility.convertedImageFromBase64String(
//                                this.archives[position].imageThumb)
//                            .image,
//                      );
//                    } else {
//                      return CircleAvatar(
//                        child: Text(
//                          '?',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                          ),
//                        ),
//                      );
//                    }
//                  }

                  CircleAvatar conclusionCompleted() {
                    if (this.archives[position].conclusion != null) {
                      return CircleAvatar(
                          child: Icon(
                        Icons.star,
                        size: 32,
                      ));
                    } else {
                      return CircleAvatar(
                          child: Icon(
                        Icons.star_half,
                        size: 32,
                      ));
                    }
                  }

                  return Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      alignment: AlignmentDirectional.centerStart,
                      color: Colors.redAccent,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onDismissed: (DismissDirection direction) {
                      helper.deleteArchive(this.archives[position].id);
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content:
                                Text('$archiveName\'s analysis was deleted!')),
                      );
                      getData();
                    },
                    confirmDismiss: (DismissDirection direction) async {
                      return await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Confirm"),
                            content: const Text(
                                "Are you sure you wish to delete this item?"),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(true),
                                  child: const Text("DELETE")),
                              FlatButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: const Text("CANCEL"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    direction: DismissDirection.startToEnd,
                    child: GestureDetector(
                      child: Card(
                        color: Colors.teal,
                        elevation: 2.0,
                        child: ListTile(
                          leading: conclusionCompleted(),
                          title: Text(
                            archiveTitle(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            archiveSubTitle(),
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          onTap: () {
                            navigateToDetail(this.archives[position]);
                          },
                        ),
                      ),
                      onLongPress: () {
                        if (this.archives[position].conclusion != null) {
                          AlertDialog readDialog = AlertDialog(
                            title: Text('Your Conclusions:'),
                            content:
                                Text('"${this.archives[position].conclusion}"'),
                          );
                          showDialog(
                            context: context,
                            builder: (_) => readDialog,
                          );
                        } else {
                          AlertDialog addDialog = AlertDialog(
                            title: Text('No Conclusions Yet!'),
                            content: Text(
                                'You have not added your conclusions for this handwriting sample. To do so, click on the archive and edit the field below your observations. After you do so, they will show up here.'),
                          );
                          showDialog(
                            context: context,
                            builder: (_) => addDialog,
                          );
                        }
                      },
                    ),
                  );
                },
                reverse: true,
                shrinkWrap: true,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void getData() {
    final dbFuture = helper.initializeDb();
    dbFuture.then((result) {
      final archivesFuture = helper.getArchives();
      archivesFuture.then((result) {
        List<Archive> archiveList = List<Archive>();
        count = result.length;
        for (int i = 0; i < count; i++) {
          archiveList.add(Archive.fromObject(result[i]));
        }
        setState(() {
          archives = archiveList;
          count = count;
        });
      });
    });
  }

  void navigateToDetail(Archive archive) async {
    bool result = await Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnimation, Widget child) {
          animation = CurvedAnimation(
              parent: animation, curve: Curves.fastLinearToSlowEaseIn);

          return ScaleTransition(
            alignment: Alignment.bottomRight,
            scale: animation,
            child: ArchiveDetail(archive),
          );
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnimation) {
          return widget;
        },
      ),
    );
    if (result == true) {
      getData();
    }
  }
}
