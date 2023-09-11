
import 'package:flutter/material.dart';
import 'package:tourism/widget/w_appbar.dart';
import 'package:tourism/widget/w_bottomnavigat.dart';
class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  /// [currentSelected] start choice navigation bar
  int currentSelected = 0;
  // [controller] handle pageController
  late PageController controller;

  /// list widget
  List<Widget> bodyPageView = const [
    //WidgetBodyArticle(),
    //WidgetBodyVideo(),
    //WidgetBodyFavorite(),
   // WidgetBodyUploadArticle(),
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: const WidgetAppBar(),
      // drawer
      drawer: const Drawer(),
      // custom Navigation Bar
      bottomNavigationBar: WidgetBottomNavigation(
        currentSelected: currentSelected,
        callBack: (newIndex) {
          /// set new index include [currentSelected]
          currentSelected = newIndex;
          // controller page view
          controller.animateToPage(
            currentSelected,
            duration: const Duration(milliseconds: 400),
            curve: Curves.linear,
          );
          // reDraw
          setState(() {});
        },
      ),

      // body
      body: PageView(
        // v.v.v.imp controller pageView
        controller: controller,
        onPageChanged: (value) {
          currentSelected = value;
          setState(() {});
        },
        // part of page
        children: bodyPageView,
      ),
    );
  }
}
