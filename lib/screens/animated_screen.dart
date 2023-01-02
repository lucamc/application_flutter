

import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();


}



class _AnimatedScreenState extends State<AnimatedScreen> {


//Propieties

double _width = 50;
double _height = 50;
Color _color = Colors.indigo;
BorderRadiusGeometry _broderRadius = BorderRadius.circular(10);

//Method

void changeShape() {


  //Modifico los valores de las propiedades asignadas al ContainerS

  final random = Random(); // Gnereo una propiedad random
  _width = random.nextInt(300).toDouble() + 70; //genero un with aleatorio, nextInt es el maximo de px, y con toDouble siempre le sumo 70px para que siempre me de mas de 70.
  _height = random.nextInt(300).toDouble() + 70;
  _color = Color.fromRGBO(  //Genero un random en colores, de 0 al maximo que es 255.
    random.nextInt(255), 
    random.nextInt(255),  
    random.nextInt(255), 
    1
    );
  _broderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10); //Genero un randome en el borde, le sumo un toDouble para que el minimo nunca sea menor a 10.
 
  setState(() {}); //Para que realice los cambios
  
}

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),


      body:  Center(

         // Para darle una animación a la transiccion, utilizamos AnimatedContainer.
         child: AnimatedContainer(  
          duration: const Duration(milliseconds: 400), //Propiedad duration, para darle un tiempo a las transiciones
          curve: Curves.easeOutCubic ,
         
          //Utilizo las propiedades antes inicializadas
          width: _width,
          height: _height,
          decoration:  BoxDecoration(  //decoration: para darle diseño al contenedor, color, bordes
            color: _color,
            borderRadius: _broderRadius,  //Drle un Border Radius
          ),    
         ),
      ),

      floatingActionButton: FloatingActionButton(
         child: const Icon(Icons.play_circle_outline, size: 35,),
         onPressed: () => changeShape(),
        ),

    );
  }
}