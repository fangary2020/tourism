import 'package:flutter/material.dart';
import 'package:tourism/controller/temples/c_temples.dart';

import 'package:tourism/widget/temples/w_card_temple.dart';






class WidgetGridTemple extends StatelessWidget {
  // final String id;
  // final String identifer ;
  // final String image;
  const WidgetGridTemple({super.key});

  @override

Widget build(BuildContext context) {
    return Scaffold(
       //appBar: const WidgetAppBar(),
       body:SingleChildScrollView(
         child: Column(
           children: [
             GridView.builder( 
               scrollDirection: Axis.vertical,
              itemCount: ControllerTemple().getLength(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                  childAspectRatio: 3/ 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
              ),
               
             itemBuilder: (context, index) =>  WidgetTempleCard(
               width: 200,
               height: 200,
               image: ControllerTemple().getTemple(index).image,
               imagetemple: ControllerTemple().getTemple(index).imagetemple,
               title:ControllerTemple().getTemple(index).title ,
               id:ControllerTemple().getTemple(index).id,
               location: ControllerTemple().getTemple(index).location,
                brief: ControllerTemple().getTemple(index).brief,
                 siteurl: ControllerTemple().getTemple(index).siteurl,
                  youtube: ControllerTemple().getTemple(index).youtube,
             ),
                 ),
               //   GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
           ],
         ),
            
       ),
     
    );     

  }
}


            //   return InkWell(
            //     onTap: () {
            //       MaterialPageRoute route = MaterialPageRoute(
            //       itemBuilder: (context, index) => WidgetTempleCard(
            // data: ControllerTemple().getTemple(index),
            // ),
                   
            //       );
                 
               
              //   child: WidgetTempleCard(
              //     width: 200,
              //  height: 200,
              //  image: ControllerTemple().getTemple(index).image,
              //  imagetemple:ControllerTemple().getTemple(index).imagetemple,
              //  title:ControllerTemple().getTemple(index).title ,
              //  id:ControllerTemple().getTemple(index).id,
              //  location: ControllerTemple().getTemple(index).location,
              //   brief: ControllerTemple().getTemple(index).brief,
              //    siteurl: ControllerTemple().getTemple(index).siteurl,
              //     youtube: ControllerTemple().getTemple(index).youtube,
              //   ),
              // );
            //    width: 200,
            //    height: 200,
            //    image: ControllerTemple().getTemple(index).image,
            //    imagetemple:ControllerTemple().getTemple(index).imagetemple,
            //    title:ControllerTemple().getTemple(index).title ,
            //    id:ControllerTemple().getTemple(index).id,
            //    location: ControllerTemple().getTemple(index).location,
            //     brief: ControllerTemple().getTemple(index).brief,
            //      siteurl: ControllerTemple().getTemple(index).siteurl,
            //       youtube: ControllerTemple().getTemple(index).youtube,
            //  ),
//                  ),
//                //   GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
//            ],
//          ),
            
//        ),
     
//     );     

//   }
// }
