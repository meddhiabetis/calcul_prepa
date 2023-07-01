import 'package:flutter/material.dart';
import 'package:prep_moy/sm.dart';
import 'package:prep_moy/sp.dart';
import 'package:prep_moy/st.dart';
import 'package:prep_moy/main.dart';

class DeuxSem1 extends StatefulWidget {
  const DeuxSem1({Key? key}) : super(key: key);

  @override
  State<DeuxSem1> createState() => _DeuxSem1State();
}

class _DeuxSem1State extends State<DeuxSem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text(
          '2ème Année',
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
                    MaterialPageRoute(builder: (context) => const SecSM()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  minimumSize: const Size(300.0, 70.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
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
                    MaterialPageRoute(builder: (context) => const SecST()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  minimumSize: const Size(300.0, 70.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
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
                    MaterialPageRoute(builder: (context) => const SecSP()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  minimumSize: const Size(300.0, 70.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
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
