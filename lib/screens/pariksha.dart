import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_little_stars/util/constants.dart';
import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/optioncard.dart';
import '../util/titleappcard.dart';

class Pariksha extends StatefulWidget {
  const Pariksha({Key? key}) : super(key: key);

  @override
  State<Pariksha> createState() => _ParikshaState();
}

final questions = [
  ...varnamalaList,
  ...animalsList,
  ...birdsList,
  ...veggiesList,
  ...flowersList,
  ...fruitsList
];

List<Widget> testCards = List.generate(10, (index) {
  questions.shuffle();
  int randomQuestionIndex = Random().nextInt(questions.length);
  var randomQuestion = questions[randomQuestionIndex];
  return Container(
    color: Colors.white,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlashCard(
          height: 350,
          width: 300,
          frontWidget: OptionCard(
            // ignore: prefer_if_null_operators
            optionText: randomQuestion["optionText"]!,
            optionTextSize: 35.0,
            widgetColor: Colors.black,
            imagePath: randomQuestion['optionImagePath']!,
            isCircleImage: false,
            key: UniqueKey(),
          ),

          // Text(
          //   '$index',
          //   style: TextStyle(fontSize: 60, color: Colors.grey.shade300),
          // ),
          backWidget: Expanded(
            // flex: 2,
            child: Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(randomQuestion['optionImagePath']!),
                    fit: BoxFit.cover,
                  )),
              child: null,
            ),
          ),
        ),

        // Text(
        //   randomQuestion["optionText"]!,
        //   style: TextStyle(fontSize: 60, color: Colors.grey.shade300),
        // ),
      ),
    ),
  );
});

final List<FlashCard> flashCards = List.generate(
    5,
    (index) => FlashCard(
          key: Key(index.toString()),
          frontWidget: Container(
              height: 100,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://fn.vinhphuc.edu.vn/UploadImages/mnhoanglau/admin/anh%20nha.jpg?w=700',
                    width: 100,
                    height: 100,
                  ),
                  Text.rich(TextSpan(
                      text: 'Nghĩa:',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      children: [
                        TextSpan(
                          text: 'Ngôi nhà',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ])),
                  Text.rich(TextSpan(
                      text: 'Phiên âm:',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      children: [
                        TextSpan(
                          text: '/həʊm/',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ])),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 2),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              spreadRadius: 1,
                              blurRadius: 15)
                        ]),
                    child: Center(
                        child:
                            Icon(Icons.volume_down_sharp, color: Colors.blue)),
                  ),
                ],
              )),
          backWidget: Container(
            height: 100,
            width: 100,
            child: Center(
              child: Text(
                'Home $index',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          width: 300,
          height: 400,
        ));

class _ParikshaState extends State<Pariksha> {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Expanded(
            child: TitleAppCard(
              appCardTitle: 'పరీక్ష',
              key: UniqueKey(),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return testCards[index];
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal),
            // CarouselSlider(
            //         options: CarouselOptions(
            //           height: 300.0,
            //           enlargeCenterPage: true,
            //           autoPlay: false,
            //           viewportFraction: 0.75,

            //         ),
            //         items: flashCards.map((question) {
            //           return FlashCard(frontWidget: Text('front'), backWidget: Text('back'));
            //         }).toList(),
            //       )

            // ListView.builder(
            //     itemCount: flashCards.length,
            //     itemBuilder: (context, index) {
            //       return flashCards[index];
            //     }),
          ),
        ]),
      ),
    ));
  }
}
