import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as pPath;
import 'package:share/share.dart';
import '../model/myarchive.dart';
import '../util/dbhelper.dart';
import '../dictionary/dictionaryprops.dart';
import '../dictionary/observations.dart';
//import '../util/utility.dart';
import '../widgets/learnmore.dart';

//Call dictionaries
DictionaryProperties dictionaryProperties = DictionaryProperties();
Observations observations = Observations();

final List<String> archiveObs = [];
int currentPage = 0;
String currentPageDictionary = 'none';
bool lastPage = false;
bool showFindings = false;
final int ttlDictionaryCount = dictionaryProperties.getCount() - 1;

DbHelper helper = DbHelper();
const mnuSave = 'Save';
const mnuDelete = 'Delete';
const mnuBack = 'Back';

class ArchiveDetail extends StatefulWidget {
  final Archive archive;
  ArchiveDetail(this.archive);

  @override
  _ArchiveDetailState createState() => _ArchiveDetailState(archive);
}

class _ArchiveDetailState extends State<ArchiveDetail> {
  Archive archive;
  _ArchiveDetailState(this.archive);
  //sample type
  final _types = ['MULTIPLE', 'LARGE', 'MEDIUM', 'SMALL', 'MICRO', 'SIGNATURE'];
  String _type = 'LARGE';
  TextEditingController typeController = TextEditingController();
  //display name
  TextEditingController displayNameController = TextEditingController();
  //gender
  final _genders = ['Unknown', 'Male', 'Female', 'Other'];
  String _gender = 'Unknown';
  TextEditingController genderController = TextEditingController();
  //age
  final _ages = [
    'Unknown',
    '0-4',
    '5-9',
    '10-17',
    '17-21',
    '22-29',
    '30-39',
    '40-49',
    '50-59',
    '60-69',
    '70-79',
    '80-89',
    '90-99',
    '100+'
  ];
  String _age = 'Unknown';
  TextEditingController ageController = TextEditingController();
  //observation results
  TextEditingController obsResultController = TextEditingController();
  //image upload
  File _image;
  //conclusion
  TextEditingController conclusionController = TextEditingController();
  //scroll to top
  final ScrollController _homeController = ScrollController();

  getImageFile(ImageSource source) async {
//    String imgString;

    if (archive.uploadImage != null) {
      File(archive.uploadImage).deleteSync(recursive: true);
    }

    var image = await ImagePicker.pickImage(source: source);
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      maxWidth: 1200,
      maxHeight: 1200,
      aspectRatioPresets: Platform.isAndroid
          ? [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio16x9
            ]
          : [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio5x3,
              CropAspectRatioPreset.ratio5x4,
              CropAspectRatioPreset.ratio7x5,
              CropAspectRatioPreset.ratio16x9
            ],
      androidUiSettings: AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.teal,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false),
      iosUiSettings: IOSUiSettings(
        title: 'Cropper',
      ),
    );

    var imageFile = await FlutterImageCompress.compressAndGetFile(
      croppedFile.path,
      image.path,
      quality: 88,
    );

    final appDir = await pPath.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final savedImage = await imageFile.copy('${appDir.path}/$fileName');
    final String imageString = '${appDir.path}/$fileName';

//    var imageString =
//        (await ImagePicker.pickImage(source: source).then((imgFile) {
//      //convert image to base64String
//      imgString = Utility.base64String(imgFile.readAsBytesSync());
//      //update db with image string
//      archive.uploadImage = imgString;
//    }));

    //display image on page
    setState(() {
      _image = imageFile;
      archive.uploadImage = imageString;
    });

    print(appDir.listSync());
    print(_image?.lengthSync());
  }

  File getStoredImage() {
    String imageString = archive.uploadImage;
    File imageFile = File(imageString);
    return imageFile;
  }

  Widget largeImageView() {
    return GestureDetector(
      child: Center(
        child: Hero(
          tag: 'Handwriting Sample',
          child: Image.file(
              getStoredImage()) /*Utility.imageFromBase64String(archive.uploadImage)*/,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }

  FlatButton sampleInfo() {
    return FlatButton.icon(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          title: Text('Sample Sizes:'),
          content: Text(
              'MULTIPLE: Multiple samples varying from small to large.\n\nLARGE: Full page.\n\nMEDIUM: Half page.\n\nSMALL: One or two paragraphs.\n\nMICRO: One two sentences.\n\nSIGNATURE: Signature only.'),
        );
        showDialog(
          context: context,
          builder: (_) => alertDialog,
        );
      },
      label: Text(
        'Learn more about sample sizes',
        style: TextStyle(color: Colors.teal),
      ),
      icon: Icon(
        Icons.info,
        color: Colors.teal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    obsResultController.text = archive.obsResult;
    displayNameController.text = archive.displayName;
    typeController.text = archive.type;
    genderController.text = archive.gender;
    ageController.text = archive.age;
    conclusionController.text = archive.conclusion;

    //Display name required
    String validateName(String value) {
      if (!(value.length > 5) && value.isNotEmpty) {
        return "Name should contains more then 5 character";
      }
      return null;
    }

    AlertDialog warningDialog(
        String message, bool showContinue, String defaultBtn) {
      return AlertDialog(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.warning,
                color: Colors.amber,
              ),
              SizedBox(width: 10),
              Text('Notice!'),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: [
            if (showContinue)
              FlatButton(
                child: Text("CONTINUE ANYWAY"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            FlatButton(
              child: Text(defaultBtn),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ]);
    }

    //Create form fields
    Widget formFields() {
      var results;
      if (currentPage == 0) {
        TextStyle textStyle = Theme.of(context).textTheme.headline6;
        results = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: displayNameController,
                style: textStyle,
                onChanged: (value) => updateDisplayName(),
                decoration: InputDecoration(
                    labelText: 'Writer\'s Name',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            //sample types
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: DropdownButtonFormField<String>(
                items: _types.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                style: textStyle,
                isDense: true,
                value: retrieveType(archive.type),
                onChanged: (value) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() => updateType(value));
                  if (value == 'SMALL' ||
                      value == 'MICRO' ||
                      value == 'SIGNATURE') {
                    showDialog(
                      context: context,
                      builder: (_) => warningDialog(
                          'Please keep in mind that smaller samples do not provide enough detail to show permanent and ongoing patterns. For more accuracy, choose a sample that is at least half a page long.',
                          true,
                          'CHANGE'),
                    );
                  } else if (value == 'MULTIPLE') {
                    showDialog(
                      context: context,
                      builder: (_) => warningDialog(
                          'If you are using multiple samples, please only look for and select items that are common across all samples or do a separate anaylsis for each one.',
                          false,
                          'OK'),
                    );
                  }
                },
                decoration: InputDecoration(
                    labelText: 'Sample Size',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            sampleInfo(),
            //gender
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: DropdownButtonFormField<String>(
                items: _genders.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                style: textStyle,
                isDense: true,
                value: retrieveGender(archive.gender),
                onChanged: (value) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() => updateGender(value));
                },
                decoration: InputDecoration(
                    labelText: 'Gender',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            //age
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: DropdownButtonFormField<String>(
                items: _ages.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                style: textStyle,
                isDense: true,
                value: retrieveAge(archive.age),
                onChanged: (value) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() => updateAge(value));
                },
                decoration: InputDecoration(
                    labelText: 'Age Range',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            //image upload
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
                  //display the image
                  Center(
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: archive.uploadImage == null
                          ? Center(
                              child: Text(
                                'Upload Image\nof Handwriting Sample',
                                textAlign: TextAlign.center,
                                style: textStyle,
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Image.file(getStoredImage()),
                                /*Utility.imageFromBase64String(
                                    archive.uploadImage),*/
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return largeImageView();
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //pick the image from camera or gallery
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton.extended(
                        onPressed: () {
                          getImageFile(ImageSource.camera);
                        },
                        label: Text('Camera'),
                        heroTag: UniqueKey(),
                        icon: Icon(Icons.camera),
                      ),
                      SizedBox(width: 10),
                      FloatingActionButton.extended(
                        onPressed: () {
                          getImageFile(ImageSource.gallery);
                        },
                        label: Text('Gallery'),
                        heroTag: UniqueKey(),
                        icon: Icon(Icons.photo_library),
                      ),
                    ],
                  ),
                ],
              ),
            ),
//            SizedBox(height: 10),
//            Padding(
//              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
//              child: TextField(
//                controller: obsResultController,
//                style: textStyle,
//                onChanged: (value) => updateObsResults(),
//                decoration: InputDecoration(
//                    labelText: 'Result Code (Leave Blank)',
//                    labelStyle: textStyle,
//                    border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(5.0))),
//              ),
//            ),
            SizedBox(height: 10),
          ],
        );
      } else {
        results = Container(
          child: Text(''),
        );
      }
      return results;
    }

    //Instructions for adding new archive
    AlertDialog instructions() {
      return AlertDialog(
          title: Text('Instructions:'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                    'In each section, select the one pattern you feel is MOST like the writing sample. Avoid selecting more than one option per section unless there are several instances of each of them. If your sample doesn\'t include any of the patterns listed, feel free to skip the section and move on. Tap on the "Learn more" button at the top of each section for help. Long-press the "Learn more" button to see general meanings. Items that turn red when selected are considered Danger Signs. The average person has less than 4 Danger Signs.'),
              ],
            ),
          ),
          actions: [
            FlatButton(
              child: Text("START"),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                  currentPage++;
                });
              },
            ),
          ]);
    }

    //Start observation pages/selections
    Widget callObservations() {
      LearnMoreButton learnMoreButton = LearnMoreButton(currentPage);
      if (currentPage > 0) {
        return new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    dictionaryProperties.getSpecificName(currentPage) + ':',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                learnMoreButton,
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Container(
                height: 1.0,
                width: 130.0,
                color: Colors.teal[300],
              ),
            ),
            ListView.builder(
              itemCount: observations.getCategoryCount(
                  dictionaryProperties.getSpecificCategory(currentPage)),
              itemBuilder: (BuildContext context, int index) {
                MaterialColor dangerColor() {
                  if (observations.getCategorySpecificDanger(
                          dictionaryProperties.getSpecificCategory(currentPage),
                          index) ==
                      true) {
                    return Colors.red;
                  } else {
                    return Colors.teal;
                  }
                }

                String getFinding = observations.getCategorySpecificFinding(
                    dictionaryProperties.getSpecificCategory(currentPage),
                    index);

                var doesFindingExist = archiveObs.contains(observations
                    .getObsId(getFinding)
                    .toString()
                    .padLeft(3, '0'));

                return CheckboxListTile(
                  title: Text(getFinding),
                  activeColor: dangerColor(),
                  checkColor: Colors.white,
                  value: doesFindingExist,
                  onChanged: (bool newValue) {
                    setState(() {});
                    if (doesFindingExist) {
                      archiveObs.remove(observations
                          .getObsId(getFinding)
                          .toString()
                          .padLeft(3, '0'));
                    } else {
                      archiveObs.add(observations
                          .getObsId(getFinding)
                          .toString()
                          .padLeft(3, '0'));
                    }
                  },
                  selected: doesFindingExist,
                );
              },
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
            SizedBox(height: 30),
          ],
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(),
        );
      }
    }

    //Show observation results
    Widget completeResults() {
      var results;

      if (archive.obsResult.length > 0 && currentPage == 0) {
        //IF EXISTING ENTRY
        // Create array out of string
        final splitSize = 3;
        RegExp exp = new RegExp(r"\d{" + "$splitSize" + "}");
        String str = archive.obsResult;
        Iterable<Match> matches = exp.allMatches(str);
        var archiveResults =
            matches.map((m) => int.tryParse(m.group(0))).toList();

        //Add share functionality
        void share() {
          final RenderBox box = context.findRenderObject();

          String subjectInfo;
          String showSeparator = '';
          String showGender = '';
          String showComma = '';
          String showAge = '';

          if (archive.gender != '' || archive.age != '') {
            showSeparator = ' - ';
          }
          if (archive.gender != '') {
            showGender = archive.gender;
          }
          if (archive.gender != '' && archive.age != '') {
            showComma = ', ';
          }
          if (archive.age != '') {
            showAge = archive.age;
          }
          subjectInfo = archive.displayName +
              showSeparator +
              showGender +
              showComma +
              'Age: ' +
              showAge;

          //convert list of archive indexes to archive meanings
          List listMeanings = [];
          for (int i = 0; i < archiveResults.length; i++) {
            String result =
                observations.getSpecificMeaning(archiveResults[i]).toString() +
                    ' ';
            listMeanings.add(result);
          }
          //concatenate to one long string
          var concatenate = StringBuffer();
          listMeanings.forEach((item) {
            concatenate.write(item);
          });
          final String concatenateResults = concatenate.toString();

          String shareResults = '';
          if (archive.conclusion != null) {
            shareResults = concatenateResults +
                '\n\n\nMy Conclusions:\n\n' +
                archive.conclusion;
          } else {
            shareResults = concatenateResults;
          }

          //add obsResults string
          final String resultsWithObsResults = shareResults +
              '\n\n\nResults Code (For Admin Only):\n' +
              archive.obsResult;

          //create body and subject
          final String bodyText =
              'My handwriting analysis observations:\n\n$resultsWithObsResults\n\nGenerated using the Siggy mobile app.';
          final String subject = 'Handwriting Analysis for $subjectInfo';
          Share.share(
            bodyText,
            subject: subject,
            sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
          );
        }

        Icon _showHide() {
          if (showFindings == false) {
            return Icon(
              Icons.visibility_off,
              color: Colors.teal,
            );
          } else {
            return Icon(
              Icons.visibility,
              color: Colors.teal,
            );
          }
        }

        results = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 15.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Your Observations for ' +
                                archive.displayName +
                                '\'s Handwriting:',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: GestureDetector(
                              onTap: () {
                                if (showFindings == false) {
                                  setState(() {
                                    showFindings = true;
                                  });
                                } else {
                                  setState(() {
                                    showFindings = false;
                                  });
                                }
                              },
                              child: _showHide()),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            share();
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5.0, bottom: 1.0),
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.teal,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Share Results',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: ListView.builder(
                itemCount: archiveResults.length,
                itemBuilder: (BuildContext context, int index) {
                  var dangerColor;
                  if (observations.getSpecificDanger(archiveResults[index]) ==
                      true) {
                    dangerColor = Colors.red;
                  } else {
                    dangerColor = Colors.black;
                  }

                  String showSemiColon;
                  if (observations.getSpecificCategory(archiveResults[index]) !=
                      'ass') {
                    showSemiColon = ':';
                  } else {
                    showSemiColon = '';
                  }

                  Widget showFindingText() {
                    if (showFindings == true) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                if (observations.getSpecificDanger(
                                        archiveResults[index]) ==
                                    true)
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, bottom: 1.0),
                                      child: Icon(
                                        Icons.warning,
                                        color: Colors.red,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                TextSpan(
                                  text: observations
                                          .getSpecificFinding(
                                              archiveResults[index])
                                          .toString() +
                                      showSemiColon,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: dangerColor),
                                ),
                              ],
                            ),
                          ),
                          Text(
                              observations
                                  .getSpecificMeaning(archiveResults[index])
                                  .toString(),
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          SizedBox(height: 10),
                        ],
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                if (observations.getSpecificDanger(
                                        archiveResults[index]) ==
                                    true)
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, bottom: 1.0),
                                      child: Icon(
                                        Icons.warning,
                                        color: Colors.red,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                TextSpan(
                                  text: observations
                                      .getSpecificMeaning(archiveResults[index])
                                      .toString(),
                                  style: TextStyle(color: dangerColor),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      );
                    }
                  }

                  return showFindingText();
                },
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: null,
                controller: conclusionController,
                style: Theme.of(context).textTheme.headline6,
                onChanged: (value) => updateConclusion(),
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelText: 'Your Conclusions',
                    labelStyle: Theme.of(context).textTheme.headline6,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Update ' + archive.displayName + '\'s Info:',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 20),
          ],
        );
      } else if (archive.obsResult.length == 0 && currentPage == 0) {
        //IF NEW ENTRY
        int minutes = (ttlDictionaryCount * 2);
        results = Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Start a new analysis: ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  archive.obsResult,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 10),
                Text(
                  'Complete the following form to begin a new analysis. There are a total of $ttlDictionaryCount sections, which may or may not apply to your sample. Please allow for at least one hour per sample until you get familiar with the process.',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        );
      } else {
        results = Container();
      }
      return results;
    }

    //Show start button
    Widget startAnalysisButton() {
      var results;
      if (currentPage == 0 && archive.obsResult.length == 0) {
        results = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 30),
            RaisedButton(
              padding: EdgeInsets.all(15.0),
              child: Text('Continue', style: TextStyle(fontSize: 20)),
              textColor: Colors.white,
              color: Colors.teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () {
                if (!(displayNameController.text.length > 1) ||
                    displayNameController.text.isEmpty) {
                  AlertDialog alertDialog = AlertDialog(
                    title: Text('Required!'),
                    content: Text('Please enter a name for this archive.'),
                  );
                  showDialog(
                    context: context,
                    builder: (_) => alertDialog,
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (_) => instructions(),
                  );
                }
              },
            ),
            SizedBox(height: 30),
          ],
        );
      } else {
        results = SizedBox(height: 0);
      }
      return results;
    }

    //Show Save Button
    Widget changeFloatingActionBar() {
      if (currentPage == ttlDictionaryCount) {
        lastPage = true;
      } else {
        lastPage = false;
      }
      var results;
      if (archive.obsResult.length > 0) {
        results = FloatingActionButton(
          child: const Icon(Icons.save),
          onPressed: () {
            save();
          },
        );
      } else if (lastPage == true) {
        results = FloatingActionButton(
          child: const Icon(Icons.check),
          onPressed: () {
            save();
          },
        );
      } else {
        results = null;
      }
      return results;
    }

    //Show progress completed text in bottom bar
    String pageBottomBarText() {
      if (currentPage == 0) {
        return 'Progress: $currentPage/$ttlDictionaryCount (0%)';
      } else if (lastPage == true) {
        return '';
      } else {
        var percent = (currentPage / ttlDictionaryCount * 100).round();
        return 'Progress: $currentPage/$ttlDictionaryCount ($percent%)';
      }
    }

    //Change bottom bar buttons depending on currentPage
    Widget changeBottomAppBar() {
      if (currentPage == ttlDictionaryCount) {
        lastPage = true;
      } else {
        lastPage = false;
      }
      var results;

      if (archive.obsResult.length > 0) {
        //IF EXISTING ENTRY
        results = Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5)]),
          child: BottomAppBar(
            color: Colors.teal,
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    back();
                  },
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    delete();
                  },
                )
              ],
            ),
          ),
        );
      } else if (lastPage == true) {
        //IF NEW ENTRY AND LAST PAGE
        results = Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5)]),
          child: BottomAppBar(
            color: Colors.teal,
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      currentPage = currentPage - 1;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text('All done!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        );
      } else if (archive.obsResult.length == 0 && currentPage == 0) {
        //IF NEW ENTRY AND FORM FIELD PAGE
        results = Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5)]),
          child: BottomAppBar(
            color: Colors.teal,
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    delete();
                  },
                  color: Colors.white,
                ),
                Text(
                  pageBottomBarText(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  onPressed: () {
                    if (!(displayNameController.text.length > 1) ||
                        displayNameController.text.isEmpty) {
                      AlertDialog alertDialog = AlertDialog(
                        title: Text('Required!'),
                        content: Text('Please enter a name for this archive.'),
                      );
                      showDialog(
                        context: context,
                        builder: (_) => alertDialog,
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (_) => instructions(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        );
      } else {
        //IF NEW ENTRY AND ANY OTHER PAGE
        results = Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5)]),
          child: BottomAppBar(
            color: Colors.teal,
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      currentPage--;
                    });
                  },
                ),
                GestureDetector(
                  onLongPress: () {
                    setState(() {
                      currentPage = ttlDictionaryCount;
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    height: 40,
                    width: 250,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      pageBottomBarText(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      currentPage++;
                    });
                  },
                ),
              ],
            ),
          ),
        );
      }
      return results;
    }

    return Container(
      color: Colors.teal,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //include results at the top for existing archives only
                    completeResults(),
                    //begin form
                    formFields(),
                    //display start button
                    startAnalysisButton(),
                    //select observations
                    callObservations(),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: changeFloatingActionBar(),
          bottomNavigationBar: changeBottomAppBar(),
        ),
      ),
    );
  }

  void save() {
    archive.date = new DateFormat.yMd().format(DateTime.now());
    if (archive.id != null) {
      helper.updateArchive(archive);
    } else {
      helper.insertArchive(archive);
    }
    Navigator.pop(context, true);

    //Convert observations to a single string for storing in archive
    if (lastPage == true) {
      var concatenate = StringBuffer();
      archiveObs.forEach((item) {
        concatenate.write(item);
      });
      archive.obsResult = concatenate.toString();

      //Reset list
      archiveObs.clear();
      currentPage = 0;
      lastPage = false;
    }
  }

  void delete() async {
    Navigator.pop(context, true);
    currentPage = 0;
    if (archive.id == null) {
      return;
    }
    int result;
    result = await helper.deleteArchive(archive.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text('Delete Archive'),
        content: Text('The Archive has been deleted'),
      );
      showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 2), () {
              Navigator.of(context).pop(true);
            });
            return alertDialog;
          });
    }
  }

  void back() {
    currentPage = 0;
    Navigator.pop(context, true);
  }

  void updateDisplayName() {
    archive.displayName = displayNameController.text;
  }

  void updateType(String value) {
    switch (value) {
      case 'MULTIPLE':
        archive.type = 'MULTIPLE';
        break;
      case 'LARGE':
        archive.type = 'LARGE';
        break;
      case 'MEDIUM':
        archive.type = 'MEDIUM';
        break;
      case 'SMALL':
        archive.type = 'SMALL';
        break;
      case 'MICRO':
        archive.type = 'MICRO';
        break;
      case 'SIGNATURE':
        archive.type = 'SIGNATURE';
        break;
    }
    setState(() {
      _type = value;
    });
  }

  String retrieveType(String value) {
    String result;
    switch (value) {
      case 'MULTIPLE':
        result = 'MULTIPLE';
        break;
      case 'LARGE':
        result = 'LARGE';
        break;
      case 'MEDIUM':
        result = 'MEDIUM';
        break;
      case 'SMALL':
        result = 'SMALL';
        break;
      case 'MICRO':
        result = 'MICRO';
        break;
      case 'SIGNATURE':
        result = 'SIGNATURE';
        break;
    }
    return result;
  }

  void updateGender(String value) {
    switch (value) {
      case 'Unknown':
        archive.gender = 'Unknown';
        break;
      case 'Male':
        archive.gender = 'Male';
        break;
      case 'Female':
        archive.gender = 'Female';
        break;
      case 'Other':
        archive.gender = 'Other';
        break;
    }
    setState(() {
      _gender = value;
    });
  }

  String retrieveGender(String value) {
    String result;
    switch (value) {
      case 'Unknown':
        result = 'Unknown';
        break;
      case 'Male':
        result = 'Male';
        break;
      case 'Female':
        result = 'Female';
        break;
      case 'Other':
        result = 'Other';
        break;
    }
    return result;
  }

  void updateAge(String value) {
    switch (value) {
      case 'Unknown':
        archive.age = 'Unknown';
        break;
      case '0-4':
        archive.age = '0-4';
        break;
      case '5-9':
        archive.age = '5-9';
        break;
      case '10-17':
        archive.age = '10-17';
        break;
      case '17-21':
        archive.age = '17-21';
        break;
      case '22-29':
        archive.age = '22-29';
        break;
      case '30-39':
        archive.age = '30-39';
        break;
      case '40-49':
        archive.age = '40-49';
        break;
      case '50-59':
        archive.age = '50-59';
        break;
      case '60-69':
        archive.age = '60-69';
        break;
      case '70-79':
        archive.age = '70-79';
        break;
      case '80-89':
        archive.age = '80-89';
        break;
      case '90-99':
        archive.age = '90-99';
        break;
      case '100+':
        archive.age = '100+';
        break;
    }
    setState(() {
      _age = value;
    });
  }

  String retrieveAge(String value) {
    String result;
    switch (value) {
      case 'Unknown':
        result = 'Unknown';
        break;
      case '0-4':
        result = '0-4';
        break;
      case '5-9':
        result = '5-9';
        break;
      case '10-17':
        result = '10-17';
        break;
      case '17-21':
        result = '17-21';
        break;
      case '22-29':
        result = '22-29';
        break;
      case '30-39':
        result = '30-39';
        break;
      case '40-49':
        result = '40-49';
        break;
      case '50-59':
        result = '50-59';
        break;
      case '60-69':
        result = '60-69';
        break;
      case '70-79':
        result = '70-79';
        break;
      case '80-89':
        result = '80-89';
        break;
      case '90-99':
        result = '90-99';
        break;
      case '100+':
        result = '100+';
        break;
    }
    return result;
  }

  void updateConclusion() {
    archive.conclusion = conclusionController.text;
  }

  void updateObsResults() {
    archive.obsResult = obsResultController.text;
  }
}
