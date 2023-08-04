
import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/detailpage.dart';
import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return DetailPage(detailPageTitle: 'ఫలాలు', optionList: fruitsList, key: UniqueKey(), );
  }
}