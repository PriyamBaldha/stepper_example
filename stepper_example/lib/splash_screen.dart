import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Duration duration = const Duration(seconds: 3);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('homepage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.login),
              iconSize: 200,
            ),
            const CircularProgressIndicator(
              color: Colors.blue,
            ),
            const Text(
              "Made With in India",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
