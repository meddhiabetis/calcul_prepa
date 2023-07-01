import 'package:flutter/material.dart';
import 'package:prep_moy/1ereSem1.dart';
import 'package:prep_moy/1ereSem2.dart';
import 'package:prep_moy/main.dart';

class PremChoix extends StatefulWidget {
  const PremChoix({Key? key}) : super(key: key);

  @override
  State<PremChoix> createState() => _PremChoixState();
}

class _PremChoixState extends State<PremChoix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text(
          '1ère Année',
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
                    MaterialPageRoute(builder: (context) => const PremSem1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ), backgroundColor: buttonColour,
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    minHeight: 70.0,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Semestre Ⅰ",
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
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PremSem2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ), backgroundColor: buttonColour,
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    minHeight: 70.0,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Semestre Ⅱ",
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
