import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resources extends StatefulWidget {
  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  Widget book(
      {String imageFileName,
      String title,
      String author,
      String link,
      int pages,
      int year}) {
    launchURL() async {
      String url = link;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Card(
          color: Colors.teal[100],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.grey,
                              offset: new Offset(2.0, 2.0),
                              blurRadius: 1.0,
                              spreadRadius: 1.0)
                        ],
                      ),
                      child: Image.asset('images/resources/$imageFileName'),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'by $author',
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '$pages Pages',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Published $year',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        onTap: launchURL,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[300],
      child: SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            title: new Text('Resources'),
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
                icon: const Icon(Icons.home),
                tooltip: 'Home',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 30, right: 15.0, bottom: 20),
                    child: Text(
                      'If you\'re interested in deep-diving into graphology (the study of handwriting), the following resources are highly recommended.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Top Books:',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  //Each book container
                  book(
                    imageFileName: 'book_idiots_guide_to_handwriting.jpg',
                    title:
                        'The Complete Idiot\'s Guide to Handwriting Analysis, 2nd Edition',
                    author: 'Sheila Lowe',
                    link:
                        'https://www.amazon.com/dp/0028632028/ref=cm_sw_em_r_mt_dp_U_n3ATEbF4KBTXJ',
                    pages: 336,
                    year: 2007,
                  ),
                  book(
                    imageFileName: 'book_sex_lies_and_handwriting.jpg',
                    title:
                        'Sex, Lies, and Handwriting: A Top Expert Reveals the Secrets Hidden in Your Handwriting',
                    author: 'Michelle Dresbold',
                    link:
                        'https://www.amazon.com/dp/0743288106/ref=cm_sw_em_r_mt_dp_U_62ATEbHCZD35F',
                    pages: 306,
                    year: 2006,
                  ),
                  book(
                    imageFileName: 'book_reading_between_the_lines.jpg',
                    title:
                        'Reading Between The Lines: Decoding Handwriting (Handwriting Psychology)',
                    author: 'Sheila Lowe',
                    link:
                        'https://www.amazon.com/dp/1718051042/ref=cm_sw_em_r_mt_dp_U_Z0ATEbDPXB2BB',
                    pages: 344,
                    year: 2018,
                  ),
                  book(
                    imageFileName: 'book_ha_putting_it_to_work_for_you.jpg',
                    title: 'Handwriting Analysis : Putting It to Work for You',
                    author: 'Sheila Lowe',
                    link:
                        'https://www.amazon.com/dp/0809235668/ref=cm_sw_em_r_mt_dp_U_t9ATEbKDVYKXV',
                    pages: 368,
                    year: 1994,
                  ),
                  book(
                    imageFileName: 'book_ha_the_complete_basic_book.jpg',
                    title: 'Handwriting Analysis: The Complete Basic Book',
                    author: 'Karen Amend\n& Mary S. Ruiz',
                    link:
                        'https://www.amazon.com/dp/087877050X/ref=cm_sw_em_r_mt_dp_U_4.ATEbCK9MD7N',
                    pages: 196,
                    year: 2000,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
