
import 'package:admindropshippingapp/adminside/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'mobileloginpage.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff69A03A),
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'DropShipping App',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0,
              bottom: 30.0,
            ),
            child: ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 300,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: const Color(0xff69A03A),

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  'images/getstarted1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/getstarted2.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/getstarted3.png',
                  fit: BoxFit.cover,
                ),
              ],

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {},

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),
          ),
          FlatButton(
            textColor: Colors.white,
            color: const Color(0xff69A03A),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Get started",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AdminPage()),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ],
      ),
    );
  }
}
