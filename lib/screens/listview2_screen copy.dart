import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {


  final options = const["Megaman", "Metal", "Final Fantasy", "Dark", "Hero"];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Listview 2"), 
    ),
    
    body: ListView.separated(
      itemCount: options.length,
      itemBuilder: (context, index) => ListTile(
        title:  Text(options[index], style: const TextStyle(fontSize: 20),),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
        onTap: () {
          final game = options[index];
          print(game);
        } ,
      ),
      separatorBuilder: ( _ , __ ) => const Divider(),

 
      ),
    );
  }
}

