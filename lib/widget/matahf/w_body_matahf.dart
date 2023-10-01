import 'package:flutter/material.dart';
import 'package:tourism/widget/matahf/w_card_musems.dart';
import 'package:tourism/widget/w_appbar.dart';

import '../../controller/matahf/c_matahf.dart';



class WidgetGridMathaf extends StatelessWidget {
  // final String id;
  // final String identifer ;
  // final String image;
 // final int index1;
  const WidgetGridMathaf({super.key});

  @override

Widget build(BuildContext context) {
    return Scaffold(
     appBar: const WidgetAppBar(),
       body:GridView.builder( 
         scrollDirection: Axis.vertical,
        itemCount: ControllerMusem().getLength(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
            childAspectRatio: 3/ 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
        ),
         
       itemBuilder: (context, index) =>  WidgetMusemsCard(
      // data: ControllerMusem().getMusem(index),
          id: ControllerMusem().getMusem(index).id,
        title:ControllerMusem().getMusem(index).title,
      
         image: ControllerMusem().getMusem(index).image,
         location: ControllerMusem().getMusem(index).location,
         brief: ControllerMusem().getMusem(index).brief,
         siteurl: ControllerMusem().getMusem(index).siteurl,
         youtube: ControllerMusem().getMusem(index).youtube,
      
        
       ),
           ),
     
    );     

  }
}
