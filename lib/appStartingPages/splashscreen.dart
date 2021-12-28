import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'getstarted.dart';
import 'mobileloginpage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("completed");
  return runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SplashScreen(),
      ),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff69A03A),
            ),
          ),
          Center(
            child: DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Vegetable Gallery',
                      speed: const Duration(milliseconds: 166)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 420),
              width: 220,
              height: 220,
              alignment: Alignment.center,
              child: Image.asset(
                "images/vegetable.png",
                fit: BoxFit.cover,
                height: 2385,
                width: 2385,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 4), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GetStartedPage()));
  }
}
