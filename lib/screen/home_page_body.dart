import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
              Expanded(
                child: HomePageBodyText(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomePageContactUs(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageBodyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
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
    );
  }
}

class HomePageContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.4),
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),
          Text(
            'Contact Us',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 1.0,
            ),
            child: TextField(
              autofocus: false,
              style: TextStyle(fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                hintText: 'e-mail',
                labelText: 'e-mail',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                hintText: 'Phone number',
                labelText: 'Phone number',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.w700),
              maxLines: 3,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintText: 'Message',
                labelText: 'Message',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: RaisedButton(
                elevation: 2.0,
                onPressed: () {},
                child: Text(
                  'Send',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
