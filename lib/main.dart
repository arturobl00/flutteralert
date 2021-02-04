import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  String textoInput = "";

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            precionaSi();
          },
          child: Text("Yes"),
        ),
        FlatButton(
          onPressed: () {
            precionaNo();
          },
          child: Text("No"),
        ),
      ],
    );

    showDialog(context: context, child: dialog);
  }

  void cuandoCambie(String value) {
    setState(() {
      textoInput = value;
    });
  }

  void precionaSi() {
    print("Si");
  }

  void precionaNo() {
    print("No");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Alert Dialog"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: "Ingrese Texto"),
                  onChanged: (String value) {
                    cuandoCambie(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    child: Text("Ver Alerta"),
                    onPressed: () {
                      showAlert(textoInput);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
