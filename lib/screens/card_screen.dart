import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card Widget"
        ),
      ),
      body: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children:   [
         const CustomCardType(),
         const SizedBox(height: 16,),
         CustomCardType2("https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000", "Pradera"),
         const SizedBox(height: 16,),
         CustomCardType2("https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small/T_4-01.jpg", "Bosque Rojo"),
         const SizedBox(height: 16,),
         CustomCardType2("https://thumbs.dreamstime.com/b/mountain-landscape-sunset-dawn-stock-vector-illustration-78751548.jpg", "Montañas"),
         const SizedBox(height: 16,),
         CustomCardType2("https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg", "Arcoíris"),
         const SizedBox(height: 16,),
         CustomCardType2("https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000", "Bosque Verde"),
        const SizedBox(height: 16,),
         CustomCardType2("https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000", "Pradera"),
         const SizedBox(height: 16,),
         CustomCardType2("https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small/T_4-01.jpg", "Bosque Rojo"),
         const SizedBox(height: 16,),
         CustomCardType2("https://thumbs.dreamstime.com/b/mountain-landscape-sunset-dawn-stock-vector-illustration-78751548.jpg", "Montañas"),
         const SizedBox(height: 16,),
         CustomCardType2("https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg", "Arcoíris"),
         const SizedBox(height: 16,),
         CustomCardType2("https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000", "Bosque Verde"),
        ],
      )
    );
    
  }
}