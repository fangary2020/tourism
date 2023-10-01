import 'package:flutter/material.dart';
import 'package:tourism/constant/app_images.dart';

import 'package:tourism/widget/favorite/w_card.favorite.dart';


class WidgetBodyFavorite extends StatelessWidget {
  const WidgetBodyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      // appBar: const WidgetAppBar(),
       body:GridView.builder( 
         scrollDirection: Axis.vertical,
        itemCount: ControllerImage().getLength(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
            childAspectRatio: 3/ 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => WidgetCardImages(
        image: ControllerImage().getImage(index).image,
        id:ControllerImage().getImage(index).id,
        identifer: ControllerImage().getImage(index).identifer,

        
          ),
       
        ),
     
    );     

  }
}