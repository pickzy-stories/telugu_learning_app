import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const primaryColor = Color(0xFF804CEF);
const Radius cardRadius = Radius.circular(50);
const playStoreId = 'com.code_little_stars.telugukidsapp';

TextStyle buildTeluguFontStyle(BuildContext context) => GoogleFonts.ramaraja(
    color: Colors.white, textStyle: Theme.of(context).textTheme.headline3);



  List<Color> optionColors = [
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.red,
    Colors.yellow.shade900
    
  ];

   const varnamalaList = [
    {
      'optionText': 'అ - అమ్మ',
      'optionImagePath': 'assets/varnamala/amma.webp'
      
    },
    {
      'optionText': 'ఆ - ఆవు',
      'optionImagePath': 'assets/varnamala/aavu.webp'
      
    },
     {
      'optionText': 'ఇ - ఇల్లు',
      'optionImagePath': 'assets/varnamala/illu.webp'
      
    },
    {
      'optionText': 'ఈ - ఈగ',
      'optionImagePath': 'assets/varnamala/eega.webp'
      
    },
    {
      'optionText': 'ఉ - ఉడుత',
      'optionImagePath': 'assets/varnamala/uduta.webp'
      
    },
    {
      'optionText': 'ఊ - ఊయల',
      'optionImagePath': 'assets/varnamala/ooyala.webp'
      
    },
    {
      'optionText': 'ఋ - ఋషి',
      'optionImagePath': 'assets/varnamala/rushi.webp'
      
    },
    {
      'optionText': 'ౠ',
      'optionImagePath': 'assets/varnamala/rhu.webp'
      
    },
    {
      'optionText': 'ఎ - ఎలుక',
      'optionImagePath': 'assets/varnamala/eluka.webp'
      
    },
    {
      'optionText': 'ఏ - ఏనుగు',
      'optionImagePath': 'assets/varnamala/yenugu.webp'
      
    },
    {
      'optionText': 'ఐ - ఐదు',
      'optionImagePath': 'assets/varnamala/aidu.webp'
      
    },
    {
      'optionText': 'ఒ - ఒంటె',
      'optionImagePath': 'assets/varnamala/onte.webp'
      
    },
    {
      'optionText': 'ఓ - ఓడ',
      'optionImagePath': 'assets/varnamala/ooda.webp'
      
    },
     {
      'optionText': 'ఔ - ఔషధము',
      'optionImagePath': 'assets/varnamala/aushadham.webp'
      
    },
    {
      'optionText': 'అం - అంబరము',
      'optionImagePath': 'assets/varnamala/ambharam.webp'
      
    },
    {
      'optionText': 'అః',
      'optionImagePath': 'assets/varnamala/ahaa.webp'
      
    },
    {
      'optionText': 'క - కలము',
      'optionImagePath': 'assets/varnamala/kalamu.webp'
      
    },
    {
      'optionText': 'ఖ - ఖడ్గము',
      'optionImagePath': 'assets/varnamala/sword.webp'
      
    },
    {
      'optionText': 'గ - గడియారము',
      'optionImagePath': 'assets/varnamala/watch.webp'
      
    },
    {
      'optionText': 'ఘ - ఘటము',
      'optionImagePath': 'assets/varnamala/pot.webp'
      
    },
    {
      'optionText': 'ఞ - వాఞ్మయము ',
      'optionImagePath': 'assets/varnamala/literature.webp'
      
    },
    {
      'optionText': 'చ - చక్రము',
      'optionImagePath': 'assets/varnamala/wheel.webp'
      
    },
    {
      'optionText': 'ఛ - ఛత్రము',
      'optionImagePath': 'assets/varnamala/umbrella.webp'
      
    },
    {
      'optionText': 'జ - జడ',
      'optionImagePath': 'assets/varnamala/jada.webp'
      
    },
    {
      'optionText': 'ఝ - ఝషము',
      'optionImagePath': 'assets/varnamala/fish.webp'
      
    },
    {
      'optionText': 'ఞ -  యజ్ఞము',
      'optionImagePath': 'assets/varnamala/ritual.webp'
      
    },
    {
      'optionText': 'ట - టపాసులు',
      'optionImagePath': 'assets/varnamala/fireworks.webp'
      
    },
    {
      'optionText': 'ఠ - కంఠము',
      'optionImagePath': 'assets/varnamala/throat.webp'
      
    },{
      'optionText': 'డ - డబ్బా',
      'optionImagePath': 'assets/varnamala/box.webp'
      
    },
    {
      'optionText': 'ఢ - ఢంకా',
      'optionImagePath': 'assets/varnamala/drum.webp'
      
    },
    {
      'optionText': 'ణ - బాణము',
      'optionImagePath': 'assets/varnamala/arrow.webp'
      
    },
    {
      'optionText': 'త - తల',
      'optionImagePath': 'assets/varnamala/head.webp'
      
    },
    {
      'optionText': 'థ - రథము',
      'optionImagePath': 'assets/varnamala/chariot.webp'
      
    },
    {
      'optionText': 'ద - దండ',
      'optionImagePath': 'assets/varnamala/garland.webp'
      
    },
    {
      'optionText': 'ధ - ధనస్సు',
      'optionImagePath': 'assets/varnamala/bow.webp'
      
    },
    {
      'optionText': 'న - నత్త',
      'optionImagePath': 'assets/varnamala/snail.webp'
      
    },
    {
      'optionText': 'ప - పలక',
      'optionImagePath': 'assets/varnamala/palaka.webp'
      
    },
    {
      'optionText': 'ఫ - ఫలము',
      'optionImagePath': 'assets/fruits.webp'
      
    },
    {
      'optionText': 'బ - బండి',
      'optionImagePath': 'assets/varnamala/cart.webp'
      
    },
    {
      'optionText': 'భ - భల్లూకము',
      'optionImagePath': 'assets/animals/bear.webp'
      
    },
    {
      'optionText': 'మ - మంట',
      'optionImagePath': 'assets/varnamala/fire.webp'
      
    },
    {
      'optionText': 'య - యంత్రము',
      'optionImagePath': 'assets/varnamala/machine.webp'
      
    },
    {
      'optionText': 'ర - రవి',
      'optionImagePath': 'assets/varnamala/sun.webp'
      
    },
    {
      'optionText': 'ల - లత',
      'optionImagePath': 'assets/varnamala/creeper.webp'
      
    },
    {
      'optionText': 'వ - వంకాయ',
      'optionImagePath': 'assets/veggies/eggplant.webp'
      
    },
    {
      'optionText': 'ళ - తాళము',
      'optionImagePath': 'assets/varnamala/lock.webp'
      
    },
    {
      'optionText': 'శ - శంఖము',
      'optionImagePath': 'assets/varnamala/shell.webp'
      
    },
    {
      'optionText': 'ష - మేషము',
      'optionImagePath': 'assets/varnamala/goat.webp'
      
    },
    {
      'optionText': 'స - సంచి',
      'optionImagePath': 'assets/varnamala/bag.webp'
      
    },
    {
      'optionText': 'హ - హంస',
      'optionImagePath': 'assets/birds/swan.webp'
      
    },
    {
      'optionText': 'క్ష - వృక్షము',
      'optionImagePath': 'assets/varnamala/tree.webp'
      
    },
    {
      'optionText': 'ఱ - ఱంపము',
      'optionImagePath': 'assets/varnamala/saw.webp'
      
    },
    
  ];

  const birdsList = [
     {
      'optionText': 'కొంగ',
      'optionImagePath': 'assets/birds/crane.webp'
      
    },
    {
      'optionText': 'కాకి',
      'optionImagePath': 'assets/birds/crow.webp'
      
    },
    {
      'optionText': 'బాతు',
      'optionImagePath': 'assets/birds/duck.webp'
      
    },
    {
      'optionText': 'రాబందు',
      'optionImagePath': 'assets/birds/eagle.webp'
      
    },
    {
      'optionText': 'కోడి',
      'optionImagePath': 'assets/birds/chicken.webp'
      
    },
    {
      'optionText': 'నిప్పుకోడి',
      'optionImagePath': 'assets/birds/ostrich.webp'
      
    },
    {
      'optionText': 'గుడ్లగూబ',
      'optionImagePath': 'assets/birds/owl.webp'
      
    },
    {
      'optionText': 'చిలుక',
      'optionImagePath': 'assets/birds/parrot.webp'
      
    },
    {
      'optionText': 'నెమలి',
      'optionImagePath': 'assets/birds/peacock.webp'
      
    },
    {
      'optionText': 'పావురము',
      'optionImagePath': 'assets/birds/pigeon.webp'
      
    },
    {
      'optionText': 'పిచ్చుక',
      'optionImagePath': 'assets/birds/sparrow.webp'
      
    },
    {
      'optionText': 'హంస',
      'optionImagePath': 'assets/birds/swan.webp'
      
    }

  ];

  const animalsList = [
    {
      'optionText': 'కోతి',
      'optionImagePath': 'assets/animals/monkey.webp'
      
    },
    {
      'optionText': 'ఎలుగుబంటి',
      'optionImagePath': 'assets/animals/bear.webp'
      
    },
    {
      'optionText': 'పిల్లి',
      'optionImagePath': 'assets/animals/cat.webp'
      
    },
    {
      'optionText': 'చిరుత పులి',
      'optionImagePath': 'assets/animals/leopard.webp'
      
    },
    {
      'optionText': 'చింపాంజీ',
      'optionImagePath': 'assets/animals/chimpanzee.webp'
      
    },
    {
      'optionText': 'ఆవు',
      'optionImagePath': 'assets/animals/cow.webp'
      
    },
    {
      'optionText': 'జింక',
      'optionImagePath': 'assets/animals/deer.webp'
      
    },
    {
      'optionText': 'సింహం',
      'optionImagePath': 'assets/animals/lion.webp'
      
    },
    {
      'optionText': 'తాబేలు',
      'optionImagePath': 'assets/animals/tortoise.webp'
      
    },

  ];

  const fruitsList = [
    {
      'optionText': 'సీమ రేగిపండు',
      'optionImagePath': 'assets/fruits/apple.webp'
      
    },
    {
      'optionText': 'అరటి పండు ',
      'optionImagePath': 'assets/fruits/banana.webp'
      
    },
     {
      'optionText': 'పనస పండు',
      'optionImagePath': 'assets/fruits/jackfruit.webp'
      
    },
     {
      'optionText': 'బొబ్బాయ',
      'optionImagePath': 'assets/fruits/papaya.webp'
      
    },
     {
      'optionText': 'దానిమ్మ ',
      'optionImagePath': 'assets/fruits/pomegranate.webp'
      
    },
     {
      'optionText': 'పుచ్చ కాయ',
      'optionImagePath': 'assets/fruits/watermelon.webp'
      
    },
     {
      'optionText': 'సపోటా',
      'optionImagePath': 'assets/fruits/sapota.webp'
      
    },
    {
      'optionText': 'ద్రాక్ష',
      'optionImagePath': 'assets/fruits/grapes.webp'
      
    },
     {
      'optionText': 'మామిడి',
      'optionImagePath': 'assets/fruits/mango.webp'
      
    },

  ];

  const flowersList = [
    {
      'optionText': 'గులాబీ',
      'optionImagePath': 'assets/flowers/rose.webp'
      
    },
     {
      'optionText': 'బంతి పువ్వు',
      'optionImagePath': 'assets/flowers/marigold.webp'
      
    },
    {
      'optionText': 'చామంతి పువ్వు',
      'optionImagePath': 'assets/flowers/chamanthi.webp'
      
    },
    {
      'optionText': 'మందార',
      'optionImagePath': 'assets/flowers/hibiscus.webp'
      
    },
    {
      'optionText': 'కమలం',
      'optionImagePath': 'assets/flowers/lotus.webp'
      
    },
    {
      'optionText': 'మల్లె',
      'optionImagePath': 'assets/flowers/jasmine.webp'
      
    },
  
  ];

  const veggiesList = [
    {
      'optionText': 'చిలకడ దుంప',
      'optionImagePath': 'assets/veggies/sweetpotato.webp'
      
    },
    {
      'optionText': 'బఠాణి',
      'optionImagePath': 'assets/veggies/greenpeas.webp'
      
    },
    {
      'optionText': 'బెండకాయ',
      'optionImagePath': 'assets/veggies/okra.webp'
      
    },
    {
      'optionText': 'వంకాయ',
      'optionImagePath': 'assets/veggies/eggplant.webp'
      
    },
    {
      'optionText': 'గుమ్మడికాయ',
      'optionImagePath': 'assets/veggies/pumpkin.webp'
      
    },
    {
      'optionText': 'బంగాళా దుంప',
      'optionImagePath': 'assets/veggies/potatoes.webp'
      
    },
    {
      'optionText': 'క్యారెట్',
      'optionImagePath': 'assets/veggies/carrots.webp'
      
    },
    {
      'optionText': 'బీట్రూట్',
      'optionImagePath': 'assets/veggies/beetroot.webp'
      
    },
    {
      'optionText': 'టమోటా',
      'optionImagePath': 'assets/veggies/tomatoes.webp'
      
    },
    {
      'optionText': 'పచ్చి మిరపకాయ',
      'optionImagePath': 'assets/veggies/greenchillies.webp'
      
    },
    {
      'optionText': 'కరివేపాకు',
      'optionImagePath': 'assets/veggies/curryleaves.webp'
      
    },

  ];