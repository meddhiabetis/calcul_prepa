import 'package:flutter/material.dart';
import 'package:prep_moy/mp.dart';
import 'package:prep_moy/pc.dart';
import 'package:prep_moy/pt.dart';
import 'package:prep_moy/main.dart';

class PremSem1 extends StatefulWidget {
  const PremSem1({Key? key}) : super(key: key);

  @override
  State<PremSem1> createState() => _PremSem1State();
}

class _PremSem1State extends State<PremSem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: const Text(
          '1ère Année',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecMath()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: EdgeInsets.zero,
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
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecTechno()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: EdgeInsets.zero,
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
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecPhysique()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: EdgeInsets.zero,
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
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
