import 'package:flutter/material.dart';

class HomePageNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return DesktopNavigationBar();
      },
    );
  }
}

class DesktopNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128.0, vertical: 32.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBarLogo(),
            NavigationBarRoutes(),
          ],
        ),
      ),
    );
  }
}

class NavigationBarRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: FlatButton(
            child: Text(
              'About Us',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: FlatButton(
            child: Text(
              'Products',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FlatButton.icon(
            color: Colors.amberAccent,
            icon: Icon(Icons.account_box_outlined),
            label: Text(
              'Login',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class NavigationBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            '/images/drive.png',
            height: 48.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'IoT Data Manager',
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700),
              ),
              Text(
                'stability for your processes',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
      ],
    );
  }
}
