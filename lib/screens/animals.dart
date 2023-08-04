import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/detailpage.dart';
import 'package:flutter/material.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalState createState() => _AnimalState();
}

class _AnimalState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
      return DetailPage(detailPageTitle: 'జంతువులు', optionList: animalsList, key: UniqueKey(),);

  }
}