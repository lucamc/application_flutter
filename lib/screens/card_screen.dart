import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';



class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: [


            const CustomCardType(),

            const SizedBox(
              height: 16,
            ),
            CustomCardType2(
                pathImage:
                    'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000',
                pathTitle: 'Paisaje'),
            const SizedBox(
              height: 16,
            ),
            CustomCardType2(
                pathImage: 'https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small/T_4-01.jpg',
                pathTitle: 'Rojo'),
            const SizedBox(
              height: 16,
            ),
            
            CustomCardType2(
                pathImage: 'https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small/T_4-01.jpg',
                pathTitle: 'Rojo'),
            const SizedBox(
              height: 16,
            ),
            
            CustomCardType2(
                pathImage: 'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000',
                pathTitle: 'Paisaje'),
            const SizedBox(
              height: 16,
            ),
            
            CustomCardType2(
                pathImage: 'https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small/T_4-01.jpg',
                pathTitle: 'Rojo'),
            const SizedBox(
              height: 16,
            ),
            
            CustomCardType2(
                pathImage: 'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000',
                pathTitle: 'Paisaje'),
            const SizedBox(
              height: 16,
            ),
            
            CustomCardType2(
                pathImage: 'https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small/T_4-01.jpg',
                pathTitle: 'Rojo'),
            const SizedBox(
              height: 16,
            ),
          ],
        ));
  }
}
