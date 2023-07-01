import 'package:flutter/material.dart';
import 'package:prep_moy/ccrsmp.dart';
import 'package:prep_moy/ccrspc.dart';
import 'package:prep_moy/ccrspt.dart';
import 'package:prep_moy/main.dart';

class Concours extends StatefulWidget {
  const Concours({Key? key}) : super(key: key);

  @override
  _ConcoursState createState() => _ConcoursState();
}

class _ConcoursState extends State<Concours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text(
          'Concours',
          style: appBarTextStyle,
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
                    MaterialPageRoute(builder: (context) => const Ccrssm()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 300.0,
                      minHeight: 70.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "MATH-PHYSIQUE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.yellow[100],
                      ),
                    ),
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
                    MaterialPageRoute(builder: (context) => const Ccrsst()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 300.0,
                      minHeight: 70.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "TECHNO",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.yellow[100],
                      ),
                    ),
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
                    MaterialPageRoute(builder: (context) => const Ccrssp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 300.0,
                      minHeight: 70.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "PHYSIQUE-CHIMIE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.yellow[100],
                      ),
                    ),
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
    );
  }
}
