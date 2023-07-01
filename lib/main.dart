import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:prep_moy/1ereChoixSemestre.dart';
import 'package:prep_moy/2emeChoixSemestre.dart';
import 'package:prep_moy/concours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PREPA',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 46, 79, 79),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 44, 51, 51),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 14, 131, 136),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

var appBarColor = Colors.tealAccent[700];
var backgroundColour = Colors.grey[850];
var buttonColour = Colors.yellow[800];
var appBarTextStyle = const TextStyle(fontFamily: 'Pacifico');
var fillColor = Colors.grey[800];
var inputTextColor = Colors.amber[50];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calcul Moyenne Prepa',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PremChoix()),
                  );
                },
                child: const Text(
                  "1ère Année",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DeuxChoix()),
                  );
                },
                child: const Text(
                  "2ème Année",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Concours()),
                  );
                },
                child: const Text(
                  "Concours",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 44, 51, 51),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            children: <Widget>[
              ElevatedButton.icon(
                label: const Text('Light Theme',style: TextStyle(color: Color.fromARGB(255, 21, 21, 21))),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
                ),
                icon: const Icon(Icons.wb_sunny_rounded,color: Color.fromARGB(255, 0, 0, 0),) ,
                onPressed: () {
                  var appBarColor = Color.fromARGB(255, 115, 223, 218);
                  var backgroundColour = Color.fromARGB(255, 255, 255, 255);
                  var buttonColour = const Color.fromARGB(255, 255, 247, 233);
                  var appBarTextStyle = const TextStyle(fontFamily: 'Pacifico');
                  var fillColor = Colors.grey[800];
                  var inputTextColor = Colors.amber[50];
                },
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromARGB(255, 7, 7, 7)),
                ),
                label: const Text(
                  'Dark Theme',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.nightlight_round,
                  color: Colors.white,
                ),
                onPressed: () {
                  var appBarColor = Colors.tealAccent[700];
var backgroundColour = Colors.grey[850];
var buttonColour = Colors.yellow[800];
var appBarTextStyle = const TextStyle(fontFamily: 'Pacifico');
var fillColor = Colors.grey[800];
var inputTextColor = Colors.amber[50];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
