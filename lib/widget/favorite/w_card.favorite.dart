import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:tourism/widget/matahf/w_body_matahf.dart';


class WidgetCardImages extends StatelessWidget {
  final String identifer;
  final String id;
  final String image;
   const WidgetCardImages({super.key,required this.id,required this.identifer,required this.image} );

 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          id,
          style: GoogleFonts.amiri(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Expanded(
          child: Card(
            elevation: 20,
            child: InkWell(
          
onTap: () {
               MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => const WidgetGridMathaf(
                   
                  ),
                );
               Navigator.push(context, route);
            
  },   
                // ),
  
 
       
          

              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        
        
      ],
    );
  }
}
