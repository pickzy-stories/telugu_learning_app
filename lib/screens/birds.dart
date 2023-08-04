import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/detailpage.dart';
import 'package:flutter/material.dart';

class Birds extends StatefulWidget {
  @override
  _BirdsState createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  @override
  Widget build(BuildContext context) {
    return DetailPage(
      detailPageTitle: 'పక్షులు',
      optionList: birdsList, key: UniqueKey(),
    );
  }
}
