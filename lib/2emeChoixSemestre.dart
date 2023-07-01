import 'package:flutter/material.dart';
import 'package:prep_moy/2emeSem1.dart';
import 'package:prep_moy/2emeSem2.dart';
import 'package:prep_moy/main.dart';

class DeuxChoix extends StatefulWidget {
  const DeuxChoix({Key? key}) : super(key: key);

  @override
  _DeuxChoixState createState() => _DeuxChoixState();
}

class _DeuxChoixState extends State<DeuxChoix> {
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
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DeuxSem1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  primary: buttonColour,
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    minHeight: 70.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Semestre Ⅰ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DeuxSem2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  primary: buttonColour,
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    minHeight: 70.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Semestre Ⅱ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
