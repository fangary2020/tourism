import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tourism/widget/matahf/W-musems.dart';

class WidgetMusemsCard extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String location;
  final String brief;
  final String siteurl;
  final String youtube;
  const WidgetMusemsCard({
    super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.location,
    required this.brief,
    required this.siteurl,
    required this.youtube,
  });

  @override
  Widget build(BuildContext context) {
    // final routeArg =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    // final Imageidentifer = routeArg['identifer'];
    // final imageTitle = routeArg['id'];
    // final imageImage = routeArg['image'];
    // List<DroosDetails> Mehwerthird = droosdetails3;
    // List<ControllerMusem> allImage = ControllerMusem().getMusem();

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              //   onTap: ()=>selectMusem(context),
              onTap: () {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (context) => WidgetMusem(
                    title: title,
                    locations: location,
                    brief: brief,
                    siteurl: siteurl,
                    youtube: youtube,
                  ),
                );
                Navigator.push(context, route);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // image
                    Card(
                      elevation: 20,
                      child: Image.asset(
                        image,
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Text(
                        title,
                        style: GoogleFonts.amiri(
                          color:const Color.fromARGB(255, 75, 3, 134),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // icon play
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}