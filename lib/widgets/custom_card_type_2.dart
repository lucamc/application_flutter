

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
   
  
  String pathImage = "https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000";
  String pathTitle = "Hermoso Paisaje";

  CustomCardType2(this.pathImage, this.pathTitle);
  

  @override
  Widget build(BuildContext context) {
    
      final cardImage = Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12) ),
        elevation: 12,
        shadowColor: AppTheme.primary.withOpacity(0.4),
        child: Column(
          children:   [

                 Image(
              image:  NetworkImage(pathImage), 
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                right: 25
              ),
              child:  Text(pathTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            )
          ]),
      ); 
    
      return cardImage;
  }
}
