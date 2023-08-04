
import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/detailpage.dart';
import 'package:flutter/material.dart';

class Flowers extends StatefulWidget {
  @override
  _FlowersState createState() => _FlowersState();
}

class _FlowersState extends State<Flowers> {
  @override
  Widget build(BuildContext context) {
    return DetailPage(detailPageTitle: 'పుష్పాలు', optionList: flowersList, key: UniqueKey(),);
  }
}