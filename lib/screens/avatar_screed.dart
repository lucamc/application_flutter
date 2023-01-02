
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(

      appBar: AppBar(
        title: const Text("Avatars"),
        actions:   [     //Dentro del appBar tenemos los actions, que son otros widgets que podemos colocar en este.
          
          Container(
            margin: const EdgeInsets.only(
              right: 16
            ),
            
            child: const CircleAvatar(  //Avatar circle
              backgroundColor: Colors.indigo,  //Avatar circle
              child: Text("LC"),
            ),
          )  
        ],
      ),


      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: AssetImage("assets/img/image_avatar.png"), //Utilizando Cricle Avatar agregando una imagen
         ),
      ),
    );
  }
}