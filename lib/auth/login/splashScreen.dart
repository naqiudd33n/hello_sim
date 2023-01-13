import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_sim/auth/login/getStart.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, getStartRoute);
  }

  getStartRoute() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => GetStartScreen()));

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            GetStartScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
                .animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffDD1A76),
                gradient: LinearGradient(
                    colors: [(new Color(0xffDD1A76)), (new Color(0xffDD1A76))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: 500.0),
                SizedBox(
                    height: 100,
                    width: 200.0,
                    child: Image.asset('assets/logo/hello_sim.png')),
                const Text(
                  "Gateway For Your Entertainment",
                  style: TextStyle(
                    fontSize: 20,
                    height: 2.0,
                    color: Color.fromARGB(246, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
