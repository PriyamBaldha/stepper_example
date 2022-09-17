import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stepper_example/splash_screen.dart';

import 'homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        initialRoute: 'SplashScreen',
        routes: {
          'splashscreen': (context) => SplashScreen(),
          'homepage': (context) => HomePage(),
        },
      ),
    ),
  );
}
