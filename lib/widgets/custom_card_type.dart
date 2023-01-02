
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';



class CustomCardType extends StatelessWidget {



  const CustomCardType({super.key});


  @override
  Widget build(BuildContext context) {
 
    return Card(
            
            elevation: 2,
            child:  Column(
              children:   [
                  const ListTile (    //Crear una lista de card con texto
                  leading:  Icon(Icons.adb_outlined, color: AppTheme.primary,),
                  title: Text("Titulo"),
                  subtitle: Text("Laborum labore consequat aute proident. Elit eu magna quis laborum ex proident elit nulla adipisicing nulla cillum et fugiat. Irure enim dolore fugiat ex ex ullamco.."),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    right: 5.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      TextButton(
                        onPressed: () {}, 
                        child: const Text("Cancelar"),
                        ),
                        
                       
                      TextButton(
                        onPressed: () {}, 
                        child: const Text("Ok")
                        ),
                    ],
                  ),
                )
              ]),
          );


  }

}