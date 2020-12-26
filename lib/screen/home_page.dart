import 'package:flutter/material.dart';

import 'widget/contact_us.dart';
import 'widget/navigation_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // I used to unfocus from ContactUs widget
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/healthcare.jpg'),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.blue.withOpacity(0.3),
                    Colors.green.withOpacity(0.3),
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
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'widget1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 36.0, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                  'Maecenas urna dui, laoreet sed odio luctus, mattis pulvinar velit. '
                                  'Donec ac elementum dui. '
                                  'Duis at venenatis sapien. Pellentesque porta ex in neque dignissim, nec porttitor nunc fringilla. '
                                  'Donec elementum neque a mauris dignissim euismod. '
                                  'Nam at velit semper, accumsan quam sit amet, porttitor est. '
                                  'Sed quis sem sed nulla ornare mollis. Nullam euismod pellentesque faucibus. '
                                  'Cras pharetra magna quis ligula consectetur, ut condimentum massa dapibus. '
                                  'Interdum et malesuada fames ac ante ipsum primis in faucibus. ',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ContactUs(),
                                ],
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
          ],
        ),
      ),
    );
  }
}
