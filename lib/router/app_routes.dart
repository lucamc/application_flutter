

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';

//Importacion de los screens 
import '../screens/screens.dart';



class AppRoutes {  //Rutas de la app

  static const initialRoute = 'home';


  static final menuOptions = <MenuOption> [  //Menu de opciones con las difertenes screens de mi app

    //TODO: BORRAR HOME
 
    MenuOption (route: "home", name: "Home screen", screen: const HomeScreen(), icon: Icons.home),
    MenuOption (route: "listview1", name: "Listview 1", screen: const Listview1Screen(), icon: Icons.phone_android),
    MenuOption (route: "listview2", name: "Listview 2", screen: const Listview2Screen(), icon: Icons.phone_android),
    MenuOption (route: "alert", name: "Alerts", screen: const AlertScreen(), icon: Icons.warning_amber_rounded),
    MenuOption (route: "card", name: "Cards", screen: const CardScreen(), icon: Icons.camera_front_outlined),
  
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

      for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      }


    return appRoutes;
  }


  //Lista de rutas
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      : (BuildContext context) => const HomeScreen(), 
  //       'listview1' : (BuildContext context) => const Listview1Screen(),
  //       'listview2' : (BuildContext context) => const Listview2Screen(),
  //       'alert'     : (BuildContext context) => const AlertScreen(),
  //       'card'      : (BuildContext context) => const CardScreen(),  
  // };


  //Lista de ruta dinamica
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
    );
  }


}