import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_routes.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en flutter"),
  
      ),
      
      body: ListView.separated(
        
        itemBuilder:(context, index) =>  ListTile(
          leading: Icon( menuOptions[index].icon, color: AppTheme.primary,),
          title: Text( menuOptions[index].name, style: const TextStyle(fontSize: 18), ),
          onTap: () {
           // final route = MaterialPageRoute(
           //   builder:(context) => Listview1Screen() );
              Navigator.pushNamed( context,  menuOptions[index].route);
          },
          
          
        ),  
        
        separatorBuilder:(_, __) => const Divider(color: Colors.black45, height: 8,), //Separacion
        itemCount: menuOptions.length,
        
        ),
      );
  }
}