import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:tourism/views/webview/v_webview.dart';
import 'package:tourism/widget/w_appbar.dart';

class WidgetMusem extends StatelessWidget {
 // static const routName = '/SelectMusem';
  final String title;
  final String locations;
  final String brief;
  final String siteurl;
  final String youtube;
  
  const WidgetMusem({super.key,required this.title, required this.locations,required this.brief,required this.siteurl,required this.youtube});

  @override
  Widget build(BuildContext context) {
    //final ModelArticleApp data;
    return Scaffold(
      appBar: const WidgetAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                title,
                style: GoogleFonts.cairo(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color:const Color.fromARGB(255, 245, 246, 248),
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 153, 7, 179),
                   Color.fromARGB(255, 242, 222, 121),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
           const SizedBox (
              height: 10,
            ),
            Container(
              margin:const EdgeInsets.only(left: 230),
              width: 140,
              height: 40,
              child: const Text(
                'الموقع',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                     Color.fromARGB(255, 212, 75, 236),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:const Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
             locations,
              style: GoogleFonts.amiri(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color:const Color.fromARGB(255, 14, 14, 14),
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(left: 230),
              width: 140,
              height: 40,
              child: const Text(
                'نبذه عن المتحف',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: const[
                    const Color.fromARGB(255, 212, 75, 236),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:const Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
           const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
               brief,
                style: GoogleFonts.amiri(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: const Color.fromARGB(255, 14, 14, 14),
                ),
                textAlign: TextAlign.justify,
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  primary:const  Color.fromARGB(255, 113, 18, 134),

                  // minimumSize: Size(100, 20),
                ),
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (context) => ViewWebView(url:siteurl),
                  );
                  Navigator.push(context, route);
                },
                child:  Text(
                  'معلومات عن المتحف',
                  style: GoogleFonts.blackOpsOne(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: const Color.fromARGB(255, 246, 244, 244),
              ),
                ),
              ),
            ),
            //SizedBox(height: 5,),
             Container(
              padding:const EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape:const StadiumBorder(),
                  padding:const EdgeInsets.only(left: 30, right: 30),
                  primary:const Color.fromARGB(255, 113, 18, 134),

                  // minimumSize: Size(100, 20),
                ),
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (context) => ViewWebView(url:youtube),
                  );
                  Navigator.push(context, route);
                },
                child: Text(
                  'فيديو تعريفى للمتحف',
                  style: GoogleFonts.blackOpsOne(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: const Color.fromARGB(255, 246, 244, 244),
              ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
