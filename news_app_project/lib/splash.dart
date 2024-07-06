import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app_project/home_screen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home_screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 247, 246),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "image/gettyimages-185005207-612x612 (1).jpg",
              fit: BoxFit.cover,
              height: height * .5,
              width: width * .9,
            ),
            SizedBox(
              height: 0.06,
            ),
            Text(
              "TOP NEWS",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            SizedBox(
              height: 0.06,
            ),
            SpinKitChasingDots(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
