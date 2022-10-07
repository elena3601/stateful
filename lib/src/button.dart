import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "paisaje.jpg";
  int index = 0;
  List<String> collections = [
    'bosque.jpg',
    'carretera.jpg',
    'cascada.jpg',
    'luna.jpg',
    'montañas.jpg',
    'puente.jpg'
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 5 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera Aplicación Stateful Widget 190149"),
        backgroundColor: Color.fromARGB(255, 248, 134, 3),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/' + flutterText,
                width: 180,
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 221, 4, 94)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
