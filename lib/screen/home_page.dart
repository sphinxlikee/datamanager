import 'package:flutter/material.dart';
import 'home_page_navigation_bar.dart';
import 'home_page_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context)
              .unfocus(); // I used to unfocus from ContactUs widget
        },
        child: Stack(
          children: [
            HomePageBackground(),
            HomePageColorDecorator(),
            HomePageLayout(),
          ],
        ),
      ),
    );
  }
}

class HomePageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/healthcare.jpg'),
        ),
      ),
    );
  }
}

class HomePageColorDecorator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.blue.withOpacity(0.7),
            Colors.amberAccent.withOpacity(0.5),
          ],
        ),
      ),
    );
  }
}

class HomePageLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HomePageNavigationBar(),
        HomePageBody(),
      ],
    );
  }
}
