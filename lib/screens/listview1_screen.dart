import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {


  final options = const["Megaman", "Metal", "Final Fantasy"];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Listview 1"), 
    ),
    
    body: ListView(
      children: [
        
        //List
      ...options.map(
        (option) => ListTile(
          title: Text(option, style: const TextStyle(fontSize: 20),),
          //Icons
          trailing: const  Icon(Icons.arrow_forward_ios_outlined),
        )
      ).toList()

      

        ],
      ),
    );
  }
}

