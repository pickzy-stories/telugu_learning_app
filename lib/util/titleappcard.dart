
import 'package:code_little_stars/util/titlecard.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class TitleAppCard extends StatelessWidget {
  const TitleAppCard({
    required Key key,
    required this.appCardTitle,
    this.appCardColor = primaryColor,
  }) : super(key: key);

  final String appCardTitle;
  final Color appCardColor;


  @override
  Widget build(BuildContext context) {

    return TitleCard(
      key: UniqueKey(),
      cardRadius: cardRadius,
      cardColor: appCardColor,
      cardChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(3.0),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Text(
              appCardTitle,
              style: buildTeluguFontStyle(context),
            ),
          ),
          const SizedBox(width: 32.0, height: 0.0),
        ],
      ), 
    );
  }
}
