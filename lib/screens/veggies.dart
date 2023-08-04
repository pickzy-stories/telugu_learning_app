
import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/detailpage.dart';
import 'package:flutter/material.dart';

class Veggies extends StatefulWidget {
  @override
  _VeggiesState createState() => _VeggiesState();
}

class _VeggiesState extends State<Veggies> {
  @override
  Widget build(BuildContext context) {
    return DetailPage(detailPageTitle: 'కూరగాయలు', optionList: veggiesList, key: UniqueKey(),);
  }
}