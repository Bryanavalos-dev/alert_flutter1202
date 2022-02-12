import 'package:alert_flutter/Principal/Pantallas/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlertApp());
}

class AlertApp extends StatelessWidget {
  const AlertApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Alert dialogs", home: Principal());
  }
}
