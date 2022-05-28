import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testproject/Firebase/auth_Controller.dart';

class launchScreen extends StatefulWidget {
  const launchScreen({Key? key}) : super(key: key);

  @override
  State<launchScreen> createState() => _launchScreenState();
}

class _launchScreenState extends State<launchScreen> {

  late StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      _streamSubscription = FbAuthController().checkUserStatus(({required bool loggedIn}) {
        String route = loggedIn ? '/homeScreen' : '/outboarding';
        Navigator.pushReplacementNamed(context, route);
      });
    });
  }

  @override
  void dispose() {

    _streamSubscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff69A03A),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
              child: Text(
                "FRUIT MARKET",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(
                "asset/mix_fruit_png_11.png",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}