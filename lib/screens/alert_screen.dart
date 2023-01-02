import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text("Titulo"), // Titulo de la alerta

              content: Column(
                mainAxisSize:
                    MainAxisSize.min, // El minimo tamaño de la alerta.
                children: const [
                  Text("Este es el contenido de la alerta"),
                  SizedBox(height: 12), //Separacion
                  FlutterLogo(size: 100) //Logo de Flutter
                ],
              ),
               
               actions: [//Otras acciones de la alerta

              TextButton(
                  onPressed: () => Navigator.pop(context), // Al presionar cancelar cierro la alerta volviendo a la pantalla anterior
                  child: const Text("Cancelar", style: TextStyle(color: Colors.red),)),
              TextButton(
                  onPressed: () => Navigator.pop(context), // Al presionar cancelar cierro la alerta volviendo a la pantalla anterior
                  child: const Text("Ok"))     
            ],
            );
        });
  }

  //Method
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, // Cerrar el Dialogo una vez que se abre la alerta
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retornar una Alerta
            elevation: 5,
            title: const Text("Titulo"), // Titulo de la alerta
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)), //Para bordear
            content: Column(
                mainAxisSize:
                    MainAxisSize.min, // El minimo tamaño de la alerta.
                children: const [
                  Text("Este es el contenido de la alerta"),
                  SizedBox(height: 12), // Separacion
                  FlutterLogo(size: 100) //Logo de Flutter
                ]),

            actions: [
              //Otras acciones de la alerta

              TextButton(
                  onPressed: () => Navigator.pop(context), // Al presionar cancelar cierro la alerta volviendo a la pantalla anterior
                  child: const Text("Cancelar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Text(
              "Mostrar Alerta",
              style: TextStyle(fontSize: 16),
            ),
          ),
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIos(context), //Dependiendo el dispositivo mando llamar la funcion correspondiente
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
