import 'package:flutter/material.dart';
import 'constants.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    required Key key,
    required this.cardRadius,
    required this.cardChild,
    this.cardColor = primaryColor,
  }) : super(key: key);

  final Radius cardRadius;
  final Widget cardChild;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.only(bottomRight: cardRadius, bottomLeft: cardRadius),
        color: primaryColor,
      ),
      child: cardChild,
    );
  }
}