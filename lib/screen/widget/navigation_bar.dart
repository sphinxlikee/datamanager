import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
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
            NavigationBarLogoPart(),
            Row(
              children: [
                Text('Page1'),
                Text('Page2'),
                Text('Login'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationBarLogoPart extends StatelessWidget {
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
