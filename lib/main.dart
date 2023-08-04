import 'package:code_little_stars/screens/birds.dart';
import 'package:code_little_stars/screens/flowers.dart';
import 'package:code_little_stars/screens/fruits.dart';
import 'package:code_little_stars/screens/pariksha.dart';
import 'package:code_little_stars/screens/varnamala.dart';
import 'package:code_little_stars/screens/animals.dart';
import 'package:code_little_stars/screens/veggies.dart';
import 'package:code_little_stars/util/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home.dart';

import 'util/constants.dart';


void main() {
  runApp(const AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/pariksha': (context) => const Pariksha(),
        '/varnamala': (context) => Varnamala(),
        '/birds': (context) => Birds(),
        '/animals': (context) => Animals(),
        '/fruits': (context) => Fruits(),
        '/flowers': (context) => Flowers(),
        '/veggies': (context) => Veggies(),
      },
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const Home()
    );
  }
}
