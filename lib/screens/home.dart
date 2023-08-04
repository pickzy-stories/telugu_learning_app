import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:flutter/material.dart';
import 'package:new_version/new_version.dart';
import '../util/titlecard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:rate_my_app/rate_my_app.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _colorIndex = 0;
  final RateMyApp _rateMyApp = RateMyApp(
      preferencesPrefix: 'TeluguLearnApp_',
      minDays: 0,
      minLaunches: 2,
      remindDays: 2,
      remindLaunches: 5,
      googlePlayIdentifier: playStoreId);

  int getNextColorIndex() {
    if (_colorIndex >= optionColors.length - 1) {
      _colorIndex = 0;
    } else {
      _colorIndex++;
    }
    return _colorIndex;
  }

  void _checkVersion() async {
    final newVersion = NewVersion(
      androidId: playStoreId,
    );
    // final status = (await newVersion.getVersionStatus());

    // newVersion.showUpdateDialog(
    //     context: context,
    //     versionStatus: status,
    //     dialogText: 'Don\'t miss out on some great new features🤩🥳👌 ');
    newVersion.showAlertIfNecessary(context: context);
  }

  @override
  void initState() {
    super.initState();
    _checkVersion();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _rateMyApp.init();
      if (mounted && _rateMyApp.shouldOpenDialog) {
        _rateMyApp.showRateDialog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(width: 32.0, height: 0.0),
            Expanded(
              child: TitleCard(
                cardRadius: cardRadius,
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'తెలుగు లెర్నింగ్ ఆప్',
                          style: buildTeluguFontStyle(context),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.share_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Share.share('''
    Hey! I think you'll enjoy Telugu Learning App, a free, lightweight way to study and learn telugu. 
    మీ పిల్లలు👶 ఇంత త్వరగా తెలుగు నేర్చుకోవడం📖 చూసి కచ్చితంగా ఆశ్చర్య పడతారు😲😲😲...
    : https://play.google.com/store/apps/details?id=com.code_little_stars.telugukidsapp''',
                            subject: 'Telugu Learning App!');
                      },
                    ),
                  ],
                ),
                key: UniqueKey(),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              flex: 2,
              child: GlowingOverscrollIndicator(
                axisDirection: AxisDirection.down,
                color: const Color(0XFFb67bff),
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/pariksha');
                      },
                      child: OptionCard(
                        optionText: 'పరీక్ష',
                        widgetColor: optionColors[0],
                        imagePath: 'assets/test.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/varnamala');
                      },
                      child: OptionCard(
                        optionText: 'వర్ణమాల',
                        widgetColor: optionColors[getNextColorIndex()],
                        imagePath: 'assets/alphabet.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/birds');
                      },
                      child: OptionCard(
                        optionText: 'పక్షులు',
                        widgetColor: optionColors[getNextColorIndex()],
                        imagePath: 'assets/birds/crane.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/animals');
                      },
                      child: OptionCard(
                        optionText: 'జంతువులు',
                        widgetColor: optionColors[getNextColorIndex()],
                        imagePath: 'assets/animals/monkey.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/fruits');
                      },
                      child: OptionCard(
                        optionText: 'ఫలాలు',
                        widgetColor: optionColors[getNextColorIndex()],
                        imagePath: 'assets/fruits/apple.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/flowers');
                      },
                      child: OptionCard(
                        optionText: 'పుష్పాలు',
                        widgetColor: optionColors[getNextColorIndex()],
                        imagePath: 'assets/flowers/lotus.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/veggies');
                      },
                      child: OptionCard(
                        optionText: 'కూరగాయలు',
                        widgetColor: optionColors[getNextColorIndex()],
                        imagePath: 'assets/veggies/tomatoes.webp',
                        isCircleImage: false,
                        key: UniqueKey(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Linkify(
                  onOpen: (link) async {
                    if (await canLaunch(link.url)) {
                      await launch(link.url);
                    } else {
                      throw Exception('Could not launch ${link.url}');
                    }
                  },
                  text:
                      "By using our app you are agreeing to the Privacy Policy https://devbytez.blogspot.com/2020/12/telugu-kids-app-privacy-policy.html",
                  // style: TextStyle(color: Colors.yellow),
                  linkStyle: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle buildTeluguFontStyle(BuildContext context) => GoogleFonts.ramaraja(
      color: Colors.white, textStyle: Theme.of(context).textTheme.headline3);
}
