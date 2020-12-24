import 'package:flutter/material.dart';
import './screen/widget/navigation_bar.dart';

void main() {
  // TODO: look at this line in the future for gradient issues
  // Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT Data Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.blue.shade200,
              Colors.green.shade300,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavigationBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 128.0,
                  vertical: 32.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('/images/earth.jpg'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'widget1',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'widget2',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'widget3',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                      ),
                    ],
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
