import 'package:prep_moy/main.dart';
import 'package:flutter/material.dart';


class SecSM extends StatefulWidget {
  const SecSM({Key? key}) : super(key: key);

  @override
  State<SecSM> createState() => _SecSMState();
}

class _SecSMState extends State<SecSM> {
   static double? e_alg ;
  static double? t_alg ;
  static double? ds_alg ;

  static double? t_phy ;
  static double? ds_phy ;
  static double? tp_phy ;
  static double? e_phy ;

  static double? e_anal ;
  static double? ds_anal ;
  static double? t_anal ;

  static double? e_chimie ;
  static double? t_chimie ;
  static double? ds_chimie ;

  static double? e_chimieorg ;
  static double? t_chimieorg ;
  static double? ds_chimieorg ;

  static double? e_inf ;
  static double? t_inf ;
  static double? ds_inf ;

  static double? e_ang ;
  static double? t_ang ;
  static double? ds_ang ;

  static double? e_fr ;
  static double? ds_fr ;
  static double? t_fr ;

  static double? e_msi ;
  static double? t_msi ;
  static double? ds_msi ;

  static double? e_auto ;
  static double? ds_auto ;
  static double? t_auto ;

  static double? sprt ;
  static double? moy ;
  static double? mo ;

  static double? tfab;
  static double? dsfab;
  static double? efab;
  static double? tcon;
  static double? dscon;
  static double? econ;

  void doCalc(
      tAlg,
      tAnal,
      tPhy,
      tChimie,
      tFr,
      tAng,
      tMsi,
      tAuto,
      tInf,
      dsAlg,
      dsAnal,
      dsAng,
      dsAuto,
      dsChimie,
      dsFr,
      dsInf,
      dsMsi,
      dsPhy,
      eAlg,
      eAnal,
      eAng,
      eAuto,
      eChimie,
      eFr,
      eInf,
      eMsi,
      ePhy,
      tpPhy,
      sprt) {
    setState(() {
      mo = (6 * (0.15 * tAlg + 0.35 * dsAlg + 0.5 * eAlg) +
          8 * (0.15 * tAnal + 0.35 * dsAnal + 0.5 * eAnal) +
          10 * (0.2 * tpPhy + 0.15 * tPhy + 0.25 * dsPhy + 0.4 * ePhy) +
          2.4 * (0.15 * tMsi + 0.35 * dsMsi + 0.5 * eMsi) +
          4 * (0.15 * tChimie + 0.35 * dsChimie + 0.5 * eChimie) +
          4 * (0.15 * tInf + 0.35 * dsInf + 0.5 * eInf) +
          3.6 * (0.15 * tAuto + 0.35 * dsAuto + 0.5 * eAuto) +
          
          3 * (0.15 * tFr + 0.35 * dsFr + 0.5 * eFr) +
          3 * (0.15 * tAng + 0.35 * dsAng + 0.5 * eAng) )/ 44;
      moy = double.parse((mo)!.toStringAsFixed(2));
    });
  }

  Widget _talgIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_alg = double.tryParse(value!)!;
      },
    );
  }

  Widget _tphyIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_phy = double.tryParse(value!)!;
      },
    );
  }

  Widget _tanalIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_anal = double.tryParse(value!)!;
      },
    );
  }

  Widget _tchimieIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_chimie = double.tryParse(value!)!;
      },
    );
  }

  Widget _tmsiIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },

      onSaved: (String? value) {
        t_msi = double.tryParse(value!)!;
      },
    );
  }

  Widget _tautoIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_auto = double.tryParse(value!)!;
      },
    );
  }

  Widget _tfrIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_fr = double.tryParse(value!)!;
      },
    );
  }

  Widget _tangIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_ang = double.tryParse(value!)!;
      },
    );
  }

  Widget _tinfIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Test ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        t_inf = double.tryParse(value!)!;
      },
    );
  }

  Widget _tpPhyIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'TP ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        tp_phy = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsalg() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:  (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_alg = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsanal() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_anal = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsphy() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_phy = double.tryParse(value!)!;
      },
    );
  }

  Widget _dschimie() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_chimie = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsfr() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:  (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_fr = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsang() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_ang = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsmsi() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_msi = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsauto() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_auto = double.tryParse(value!)!;
      },
    );
  }

  Widget _dsinfo() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'DS ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        ds_inf = double.tryParse(value!)!;
      },
    );
  }

  Widget _ealg() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_alg = double.tryParse(value!)!;
      },
    );
  }

  Widget _eanal() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_anal = double.tryParse(value!)!;
      },
    );
  }

  Widget _ephy() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_phy = double.tryParse(value!)!;
      },
    );
  }

  Widget _echimie() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_chimie = double.tryParse(value!)!;
      },
    );
  }

  Widget _efr() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_fr = double.tryParse(value!)!;
      },
    );
  }

  Widget _eang() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_ang = double.tryParse(value!)!;
      },
    );
  }

  Widget _emsi() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_msi = double.tryParse(value!)!;
      },
    );
  }

  Widget _eauto() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_auto = double.tryParse(value!)!;
      },
    );
  }

  Widget _einf() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Examen ',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        e_inf = double.tryParse(value!)!;
      },
    );
  }

  Widget _sprtIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Sport',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 0 || parsedValue > 20) {
                    return 'Veuillez entrer une valeur comprise entre 0 et 20';
                  }
                  return null;
                },
      onSaved: (String? value) {
        sprt = double.tryParse(value!)!;
      },
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SM',
          style: appBarTextStyle,
        ),
        backgroundColor: Colors.deepOrangeAccent[400],
      ),
      backgroundColor: backgroundColour,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Algébre',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _talgIn(),
                _dsalg(),
                _ealg(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Analyse',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tanalIn(),
                _dsanal(),
                _eanal(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Physique',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tphyIn(),
                _tpPhyIn(),
                _dsphy(),
                _ephy(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Info',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tinfIn(),
                _dsinfo(),
                _einf(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Chimie',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tchimieIn(),
                _dschimie(),
                _echimie(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'MSI',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tmsiIn(),
                _dsmsi(),
                _emsi(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Auto',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tautoIn(),
                _dsauto(),
                _eauto(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Français',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tfrIn(),
                _dsfr(),
                _efr(),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Anglais',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 215, 54, 0)),
                ),
                _tangIn(),
                _dsang(),
                _eang(),
                const SizedBox(
                  height: 25,
                ),
                
                ButtonTheme(
                    minWidth: 100,
                    height: 45,
                    child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.red[600], // Set the background color
  ),
  onPressed: () {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();
    setState(() {
      doCalc(
        t_alg,
        t_anal,
        t_phy,
        t_chimie,
        t_fr,
        t_ang,
        t_msi,
        t_auto,
        t_inf,
        ds_alg,
        ds_anal,
        ds_ang,
        ds_auto,
        ds_chimie,
        ds_fr,
        ds_inf,
        ds_msi,
        ds_phy,
        e_alg,
        e_anal,
        e_ang,
        e_auto,
        e_chimie,
        e_fr,
        e_inf,
        e_msi,
        e_phy,
        tp_phy,
        sprt,
      );
    });
    moyAlert(context, moy);
  },
  child: const Text(
    'Calculer',
    style: TextStyle(color: Colors.white, fontSize: 20),
  ),
),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void moyAlert(BuildContext context, moy) {
  var alert = AlertDialog(
    backgroundColor: Colors.grey.shade800,
    titleTextStyle: TextStyle(
      color: Colors.lightBlueAccent[700],
      fontWeight: FontWeight.w800,
      fontSize: 35,
    ),
    title: const Text("Resultat : "),
    content: Text(
      "Votre moyenne est $moy ",
      style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25),
    ),
    actions: [
      ElevatedButton(
        child: Text(
          "Ok",
          style: TextStyle(color: Colors.grey[900]),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
