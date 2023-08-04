import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/detailpage.dart';
import 'package:flutter/material.dart';

class Varnamala extends StatefulWidget {
  @override
  _VarnamalaState createState() => _VarnamalaState();
}

class _VarnamalaState extends State<Varnamala> {
  @override
  Widget build(BuildContext context) {
    return DetailPage(
      detailPageTitle: 'వర్ణమాల',
      optionList: varnamalaList, key: UniqueKey(),
    );
  }
}
