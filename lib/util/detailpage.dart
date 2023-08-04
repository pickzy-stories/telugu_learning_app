import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:code_little_stars/util/titleappcard.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {required Key key,
      required this.detailPageTitle,
      required this.optionList,
      this.optionCardColor = Colors.black})
      : super(key: key);

  final String detailPageTitle;
  final List optionList;
  final Color optionCardColor;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String language = 'te-IN';

  @override
  initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/varnamala/amma.webp"), context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: TitleAppCard(
                appCardTitle: widget.detailPageTitle,
                appCardColor: widget.optionCardColor,
                key: UniqueKey(),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              flex: 3,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 0.75,
                ),
                items: widget.optionList.map((optionMap) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: GestureDetector(
                          child: OptionCard(
                            optionText: optionMap['optionText'],
                            optionTextSize: 35.0,
                            widgetColor: widget.optionCardColor,
                            imagePath: optionMap['optionImagePath'],
                            isCircleImage: false,
                            key: UniqueKey(),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
