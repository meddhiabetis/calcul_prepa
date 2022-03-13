import 'package:prep_moy/main.dart';
import 'package:flutter/material.dart';

class SecMath extends StatefulWidget {
  SecMath({Key? key}) : super(key: key);

  @override
  _SecMathState createState() => _SecMathState();
}

class _SecMathState extends State<SecMath> {
  static double e_alg = 0;
  static double t_alg = 0;
  static double ds_alg = 0;

  static double t_phy = 0;
  static double ds_phy = 0;
  static double tp_phy = 0;
  static double e_phy = 0;

  static double e_anal = 0;
  static double ds_anal = 0;
  static double t_anal = 0;

  static double e_chimie = 0;
  static double t_chimie = 0;
  static double ds_chimie = 0;

  static double e_inf = 0;
  static double t_inf = 0;
  static double ds_inf = 0;

  static double e_ang = 0;
  static double t_ang = 0;
  static double ds_ang = 0;

  static double e_fr = 0;
  static double ds_fr = 0;
  static double t_fr = 0;

  static double e_msi = 0;
  static double t_msi = 0;
  static double ds_msi = 0;

  static double e_auto = 0;
  static double ds_auto = 0;
  static double t_auto = 0;

  static double sprt = 0;
  static double moy = 0;
  static double mo = 0;

  void doCalc(
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
      sprt) {
    setState(() {
      mo = (7 * (0.15 * t_alg + 0.35 * ds_alg + 0.5 * e_alg) +
          7 * (0.15 * t_anal + 0.35 * ds_anal + 0.5 * e_anal) +
          8 * (0.15 * tp_phy + 0.2 * t_phy + 0.25 * ds_phy + 0.4 * e_phy) +
          3.5 * (0.15 * t_msi + 0.35 * ds_msi + 0.5 * e_msi) +
          4 * (0.15 * t_chimie + 0.35 * ds_chimie + 0.5 * e_chimie) +
          4 * (0.15 * t_inf + 0.35 * ds_inf + 0.5 * e_inf) +
          1.5 * (0.15 * t_auto + 0.35 * ds_auto + 0.5 * e_auto) +
          
          3 * (0.15 * t_fr + 0.35 * ds_fr + 0.5 * e_fr) +
          3 * (0.15 * t_ang + 0.35 * ds_ang + 0.5 * e_ang) )/ 41;
      moy = double.parse((mo).toStringAsFixed(2));
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_alg = double.tryParse(value!)!;

        if (t_alg == null || t_alg > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_phy = double.tryParse(value!)!;

        if (t_phy == null || t_phy > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_anal = double.tryParse(value!)!;

        if (t_anal == null || t_anal > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_chimie = double.tryParse(value!)!;

        if (t_chimie == null || t_chimie > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_msi = double.tryParse(value!)!;

        if (t_msi == null || t_msi > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_auto = double.tryParse(value!)!;

        if (t_auto == null || t_auto > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_fr = double.tryParse(value!)!;

        if (t_fr == null || t_fr > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_ang = double.tryParse(value!)!;

        if (t_ang == null || t_ang > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? t_inf = double.tryParse(value!)!;

        if (t_inf == null || t_inf > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? tp_phy = double.tryParse(value!)!;

        if (tp_phy == null || tp_phy > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_alg = double.tryParse(value!)!;

        if (ds_alg == null || ds_alg > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_anal = double.tryParse(value!)!;

        if (ds_anal == null || ds_anal > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_phy = double.tryParse(value!)!;

        if (ds_phy == null || ds_phy > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_chimie = double.tryParse(value!)!;

        if (ds_chimie == null || ds_chimie > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_fr = double.tryParse(value!)!;

        if (ds_fr == null || ds_fr > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_ang = double.tryParse(value!)!;

        if (ds_ang == null || ds_ang > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_msi = double.tryParse(value!)!;

        if (ds_msi == null || ds_msi > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_auto = double.tryParse(value!)!;

        if (ds_auto == null || ds_auto > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? ds_inf = double.tryParse(value!)!;

        if (ds_inf == null || ds_inf > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_alg = double.tryParse(value!)!;

        if (e_alg == null || e_alg > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_anal = double.tryParse(value!)!;

        if (e_anal == null || e_anal > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_phy = double.tryParse(value!)!;

        if (e_phy == null || e_phy > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_chimie = double.tryParse(value!)!;

        if (e_chimie == null || e_chimie > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_fr = double.tryParse(value!)!;

        if (e_fr == null || e_fr > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_ang = double.tryParse(value!)!;

        if (e_ang == null || e_ang > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_msi = double.tryParse(value!)!;

        if (e_msi == null || e_msi > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? XXXXXX = double.tryParse(value!)!;

        if (e_auto == null || e_auto > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double? e_inf = double.tryParse(value!)!;

        if (e_inf == null || e_inf > 20) {
          return 'Invalid Input';
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
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String? value) {
        double sprt = double.tryParse(value!)!;

        if (sprt == null || sprt > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String? value) {
        sprt = double.tryParse(value!)!;
      },
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MP',
          style: appBarTextStyle,
        ),
        backgroundColor: Colors.deepOrangeAccent[400],
      ),
      backgroundColor: backgroundColour,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Algébre',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _talgIn(),
                _dsalg(),
                _ealg(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Analyse',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tanalIn(),
                _dsanal(),
                _eanal(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Physique',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tphyIn(),
                _tpPhyIn(),
                _dsphy(),
                _ephy(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Info',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tinfIn(),
                _dsinfo(),
                _einf(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Chimie',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tchimieIn(),
                _dschimie(),
                _echimie(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'STA',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tmsiIn(),
                _dsmsi(),
                _emsi(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Auto',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tautoIn(),
                _dsauto(),
                _eauto(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Français',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tfrIn(),
                _dsfr(),
                _efr(),
                SizedBox(
                  height: 25,
                ),
                const Text(
                  'Anglais',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.yellow),
                ),
                _tangIn(),
                _dsang(),
                _eang(),
                SizedBox(
                  height: 25,
                ),
                
                ButtonTheme(
                    minWidth: 100,
                    height: 45,
                    child: RaisedButton(
                      color: Colors.red[600],
                      child: Text(
                        'Calculer',
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
                              sprt);
                        });
                        moyAlert(context, moy);
                      },
                    ))
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
    title: Text("Resultat : "),
    content: Text(
      "Votre moyenne est $moy ",
      style: TextStyle(
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
