import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class WidgetTempleCard extends StatelessWidget {
  final double height;
  final double width;
  final String imagetemple;
  final String image;
  final String title;
  final String id;
  final String location;
  final String brief;
  final String siteurl;
  final String youtube;
  
  
  const WidgetTempleCard({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.imagetemple,
    required this.title,
    required this.id,
    required this.brief,
    required this.location,
    required this.siteurl,
    required this.youtube, });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
         shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
       // margin: EdgeInsets.all(10),
        elevation: 20,
       //color: Colors.orange,
        // child: InkWell(
        //  onTap:(){
        //   setState(() {
        //      MaterialPageRoute route = MaterialPageRoute(
        //     builder: (context) => WidgetMusem(title:widget.title,locations: widget.location,brief: widget.brief,siteurl: widget.siteurl,youtube: widget.youtube,),
        //   );
        //   Navigator.push(context, route);
        //   });
         
       //  } ,
                 
         
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
            Text(
              title,
            style: GoogleFonts.blackOpsOne(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: const Color.fromARGB(255, 13, 112, 194),
              
            ),
                    ),
           const SizedBox(
              height: 5,
            ),
              // image
              Expanded(
                child: Container(
                  //color:Colors.orangeAccent,
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20) ,
                    image:DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
                    ),
                    
                
                  ),
                  ),
              ),
                
            
              // icon play
              
            ],
          ),
        ),
      );
   
  }
}
