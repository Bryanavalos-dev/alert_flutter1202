import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alertas en dialogos"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Mostrar Alerta"),
                onPressed: () => {_mostrarAlerta(context)}),
            SizedBox(
              height: 20,
            ),
            Text("Informativo")
          ],
        )));
  }
}

//Si se coloca _ antes del nombre significa qeu es un metodo estatico
Future<void> _mostrarAlerta(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Recupera el texto que el usuario ha digitado utilizando nuestro
          // TextEditingController
          title: Text("Como estan"),
          content: Text("Bien con flutter"),
        );
      });
}
