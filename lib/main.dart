import 'package:flutter/material.dart';
import 'package:prep_moy/mp.dart';
import 'package:prep_moy/pc.dart';
import 'package:prep_moy/pt.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PREPA',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var appBarColor = Colors.tealAccent[700];
var backgroundColour = Colors.grey[850];
var buttonColour = Colors.yellow[800];
var appBarTextStyle = TextStyle(fontFamily: 'Pacifico'); // sauf sec sc et eco
var fillColor = Colors.grey[800];
var inputTextColor = Colors.amber[50];

///TO DO
var labelText = Colors.grey[400];

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: appBarColor,
            title: Text(
              'Calcul Moyenne Prepa',
              style: appBarTextStyle,
            )),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecMath()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: buttonColour,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "MATH-PHYSIQUE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecTechno()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: buttonColour,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "TECHNO",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecPyhisuqe()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: buttonColour,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "PHYSIQUE-CHIMIE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          )),
        ),
        drawer: Drawer(
          child: Container(
            color: backgroundColour,
            child: ListView(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
              children: <Widget>[
                RaisedButton.icon(
                  label: Text('Light Theme'),
                  color: Colors.white,
                  icon: Icon(Icons.wb_sunny_rounded),
                  onPressed: () {
                    appBarColor = Colors.greenAccent[400];
                    backgroundColour = Colors.amber[50];
                    buttonColour = Colors.lightBlueAccent;
                    fillColor = Colors.amber[50];
                    inputTextColor = Colors.grey[900];
                    setState(
                      () {},
                    );
                  },
                ),
                SizedBox(height: 25),
                RaisedButton.icon(
                  color: Colors.grey[850],
                  label: Text(
                    'Dark Theme',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.nightlight_round,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    appBarColor = Colors.tealAccent[700];
                    backgroundColour = Colors.grey[850];
                    buttonColour = Colors.yellow[800];
                    fillColor = Colors.grey[800];
                    inputTextColor = Colors.amber[50];
                    setState(
                      () {},
                    );
                  },
                ),
                 SizedBox(height: 500),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton.icon(
                        color: Colors.purple[100],
                        onPressed: () {
                          _openurlinst();
                        },
                        icon: Icon(Icons.person),
                        label: Text('Instagram',
                            style: TextStyle(
                                decoration: TextDecoration.underline)))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
_openurlinst() async {
  const url = 'https://www.instagram.com/dhia.betis/?hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}