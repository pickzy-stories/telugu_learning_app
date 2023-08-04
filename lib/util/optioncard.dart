import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionCard extends StatelessWidget {
  const OptionCard(
      {required Key key,
      required this.optionText,
      this.optionTextSize = 21.0,
      required this.isCircleImage,
      required this.widgetColor,
      required this.imagePath})
      : super(key: key);

  final String optionText, imagePath;
  final Color widgetColor;
  final bool isCircleImage;
  final double optionTextSize; 

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
        // color: widgetColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 21.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                image:  
                DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                )
                ),
                child: isCircleImage ? buildCircleAvatar() : null,
              ),
            ),
            // Divider(]
            //   thickness: 3.0,

            // ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                  color: widgetColor,
                ),
                child: Center(
                  child: Text(
                    optionText,
                    style: GoogleFonts.ramaraja(
                      color: Colors.white,
                      fontSize: optionTextSize,
                      fontWeight: FontWeight.w100,
                      textStyle: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  CircleAvatar buildCircleAvatar() {
    return CircleAvatar(
                radius: 45.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  imagePath,
                ),
              );
  }
}
