//import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:zoom_widget/zoom_widget.dart';
// import 'package:astro_app/listItem.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
import 'package:astro_app/input.dart';
import 'package:astro_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'மனைப்பொருத்தம்',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String title='Hello';
  static String numerator = '0';
  static String denominator = '0';
  static String rem1 = '0';
  static String rem2 = '0';
  static int side1, side2,area, areaQ,areaR;
  static double x;
  static int y, temp;
  static double z;
  static const int side3 = 1156;
  static const int side4 = 12;
  static num result1, result2, result3, result4, remain1, remain2;
  final TextEditingController controller1=TextEditingController(text: "0");
  final TextEditingController controller2=TextEditingController(text: "0");
  final TextEditingController controller3=TextEditingController(text: "0");
  final TextEditingController controller4=TextEditingController(text: "0");
   int appState = 0;
   bool isVisible=false;
   bool printIsVisible=false;
  static final List<Map<String, dynamic>> notes = [
    {
      'title': 'கற்பம்',
      'answer': [
        'கழுதை கற்பம்',
        'கருட கற்பம்',
        'புறா கற்பம்',
        'சிம்ம கற்பம்',
        'நாய்க் கற்பம்',
        'பசு கற்பம்',
        'காக கற்பம்',
        'யானை கற்பம்'
      ],
    },
    {
      'title': 'ஆதாயம்',
      'answer': [
        'சகல நன்மையுண்டாம்',
        'ஏகபோகமாய் நடக்கும்',
        'ஏகபோகமாய் நடக்கும்',
        'கீர்த்தியுண்டாம்',
        'கீர்த்தியுண்டாம்',
        'தனதானியமுண்டாம்',
        'தனதானியமுண்டாம்',
        'மங்களகர முண்டாம்',
        'மங்களகர முண்டாம்',
        'போகபாக்கிய முண்டாம்',
        'காரியசித்தி யுண்டாம்',
        'ஈஸ்வரகடாட்ச முண்டாம்'
      ],
    },
    {
      'title': 'விரையம்',
      'answer': [
        'உத்தமமாயிருக்கும்',
        'அவ்வில்லம் க்ஷீணிக்கும்',
        'அம்மனை தீயினால் சேதப்படும்',
        'அக்குடும்பம் க்ஷேமமாக இருக்கும்',
        'புத்திரவிருத்தி யுண்டாம்',
        'அதிக விரையமுண்டாம்',
        'ஆரோக்கியமுண்டாம்',
        'அதிக தரித்திரமுண்டாம்',
        'இலட்சுமி வாசமாயிருப்பாள்',
        'புத்திர நாசம்'
      ],
    },
    {
      'title': 'யோனி',
      'answer': [
        'முயல்',
        'கருடன்',
        'பூனை',
        'சிங்கம்',
        'நாய்',
        'சர்ப்பம்',
        'எலி',
        'யானை'
      ],
    },
    {
      'title': 'நட்சத்திரம்',
      'answer': [
        'ரேவதி',
        'அசுவினி',
        'பரணி',
        'கார்த்திகை',
        'ரோகிணி',
        'மிருகாசீரிடம்',
        'திருவாதிரை',
        'புனர்பூசம்',
        'பூசம்',
        'ஆயில்யம்',
        'மகம்',
        'பூரம்',
        'உத்திரம்',
        'அஸ்தம்',
        'சித்திரை',
        'சுவாதி',
        'விசாகம்',
        'அனுஷம்',
        'கேட்டை',
        'மூலம்',
        'பூராடம்',
        'உத்திராடம்',
        'திருவோணம்',
        'அவிட்டம்',
        'சதயம்',
        'பூரட்டாதி',
        'உத்திரட்டாதி'
      ],
    },
    {
      'title': 'வாரம்',
      'answer': [
        'சனி',
        'ஞாயிறு',
        'திங்கள்',
        'செய்வாய்',
        'புதன்',
        'வியாழன்',
        'வெள்ளி'
      ],
    },
    {
      'title': 'அங்கிசம்',
      'answer': [
        'கேது அங்கிசம்',
        'தடகர அங்கிசம்',
        'சோமகரனங்கிசம்',
        'சத்தி அங்கிசம்',
        'புஷ்கர அங்கிசம்',
        'குரு அங்கிசம்',
        'சுக்கிர அங்கிசம்',
        'சனி அங்கிசம்',
        'இராகு அங்கிசம்'
      ],
    },
    {
      'title': 'வம்சம்',
      'answer': [
        'சூத்திரவம்சம்',
        'பிரமவம்சம்',
        'க்ஷத்திரியவம்சம்',
        'வைசியவம்சம்'
      ],
    },
    {
      'title': 'திதி',
      'answer': [
        'தேய்பிறை பௌர்ணமி',
        'வளர்பிறை பிரதமை',
        'வளர்பிறை துவிதியை',
        'வளர்பிறை திரிதியை',
        'வளர்பிறை சதுர்த்தி',
        'வளர்பிறை பஞ்சமி',
        'வளர்பிறை சஷ்டி',
        'வளர்பிறை சப்தமி',
        'வளர்பிறை அஷ்டமி',
        'வளர்பிறை நவமி',
        'வளர்பிறை தசமி',
        'வளர்பிறை ஏகாதசி',
        'வளர்பிறை துவாதசி',
        'வளர்பிறை திரியோதசி',
        'வளர்பிறை சதுர்த்தசி',
        'வளர்பிறை பௌர்ணமி',
        'தேய்பிறை பிரதமை',
        'தேய்பிறை துவிதியை',
        'தேய்பிறை திரிதியை',
        'தேய்பிறை சதுர்த்தி',
        'தேய்பிறை பஞ்சமி',
        'தேய்பிறை சஷ்டி',
        'தேய்பிறை சப்தமி',
        'தேய்பிறை அஷ்டமி',
        'தேய்பிறை நவமி',
        'தேய்பிறை தசமி',
        'தேய்பிறை ஏகாதசி',
        'தேய்பிறை துவாதசி',
        'தேய்பிறை திரியோதசி',
        'தேய்பிறை சதுர்த்தசி'
      ],
    },
    {
      'title': 'இராசி',
      'answer': [
        'மீனம்',
        'மேஷம்',
        'ரிஷபம்',
        'மிதுனம்',
        'கடகம்',
        'சிம்மம்',
        'கன்னி',
        'துலாம்',
        'விருச்சிகம்',
        'தனுசு',
        'மகரம்',
        'கும்பம்'
      ],
    },
  ];

  List<List<String>> yogam=[
  [
    'பிரபலாரிஷ்ட','அமிர்த','சித்த','சித்த','மரண','சித்த','சித்த'
  ],
  [
    'சித்த','சித்த','சித்த','சித்த','மரண','அமிர்த','அமிர்த'
  ],
  [
    'சித்த','பிரபலாரிஷ்ட','சித்த','சித்த','சித்த','சித்த','சித்த'
  ],
  [
    'சித்த','சித்த','மரண','சித்த','அமிர்த','மரண','சித்த'
  ],
  [
    'அமிர்த','சித்த','அமிர்த','அமிர்த','சித்த','மரண','மரண'
  ],
  [
    'சித்த','சித்த','சித்த','சித்த','சித்த','மரண','சித்த'
  ],
  [
    'சித்த','சித்த','சித்த','மரண','சித்த','மரண','சித்த'
  ],
  [
    'சித்த','சித்த','அமிர்த','சித்த','சித்த','அமிர்த','சித்த'
  ],
  [
    'சித்த','சித்த','சித்த','சித்த','சித்த','சித்த','மரண'
  ],
  [
    'மரண','சித்த','சித்த','சித்த','சித்த','சித்த','மரண'
  ],
  [
    'அமிர்த','மரண','மரண','சித்த','சித்த','அமிர்த','மரண'
  ],
  [
    'சித்த','சித்த','சித்த','சித்த','அமிர்த','சித்த','சித்த'
  ],
  [
    'மரண','அமிர்த','சித்த','அமிர்த','அமிர்த','மரண','சித்த'
  ],
  [
    'மரண','சித்த','சித்த','சித்த','மரண','சித்த','அமிர்த'
  ],
  [
    'மரண','சித்த','பிரபலாரிஷ்ட','சித்த','சித்த','சித்த','சித்த'
  ],
  [
    'சித்த','சித்த','அமிர்த','சித்த','சித்த','அமிர்த','சித்த'
  ],
  [
    'சித்த','மரண','மரண','மரண','சித்த','சித்த','சித்த'
  ],
  [
    'சித்த','மரண','சித்த','சித்த','சித்த','சித்த','சித்த'
  ],
  [
    'சித்த','மரண','சித்த','மரண','சித்த','பிரபலாரிஷ்ட','மரண'
  ],
  [
    'சித்த','அமிர்த','சித்த','அமிர்த','மரண','சித்த','அமிர்த'
  ],
  [
    'சித்த','சித்த','மரண','சித்த','அமிர்த','சித்த','பிரபலாரிஷ்ட'
  ],
  [
    'சித்த','அமிர்த','மரண','பிரபலாரிஷ்ட','அமிர்த','சித்த','சித்த'
  ],
  [
    'சித்த','அமிர்த','அமிர்த','சித்த','சித்த','சித்த','மரண'
  ],
  [
    'சித்த','மரண','சித்த','சித்த','பிரபலாரிஷ்ட','சித்த','சித்த'
  ],
  [
    'அமிர்த','சித்த','சித்த','மரண','சித்த','மரண','சித்த',
  ],
  [
    'மரண','சித்த','சித்த','மரண','அமிர்த','சித்த','சித்த'
  ],
  [
    'சித்த','அமிர்த','சித்த','அமிர்த','சித்த','சித்த','சித்த'
  ]];

  static List<String> results = [];
  static int index = 0;
  static String lastTitle1 = 'வயது';
  static String lastTitle2 = 'நேத்திரம்';
  static String lastTitle3 = 'யோகம்';
  
  //MyHomePage({@required this.title});

   void calculate() {
    side1 = int.parse(numerator) * 12 + int.parse(rem1);
    //print(side1);
    side2 = int.parse(denominator) * 12 + int.parse(rem2);
    //print(side2);
    area = side1 * side2;
    areaQ = area~/144;
    areaR = area%144;
    //print('Area:$area');
    result1 = area ~/ side3;
    //print('Sub-blocks:$x');
    y = pow(side1, 2) + pow(side2, 2);
    z = sqrt(y);
    temp = z.round();
    result2 = area % side3;
    result3 = temp ~/ side4;
    result4 = temp % side4;
    remain1 = result2 ~/ 12;
    remain2 = result2 % 12;
    //print((temp/side4).toInt());
    //print(temp%side4);
    // print('Sub-blocks:$result1');
    // print('Remaining portion:$remain1 feet $remain2 inch');
    // print('Diagonal in feet(quotient):$result3');
    // print('Diagonal in feet(reminder):$result4');
    // print(notes[index]);
    // print(notes[index]['answer']);
    // print(notes[index]['answer']);

    for (index = 0; index < notes.length; index++) {
      int ind;
      if (index == 0) {
        ind = result1 % 8;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 1) {
        ind = (result1 * 8) % 12;
        if(ind==0){
          ind=12;
        }
        results.add(ind.toString());
      } else if (index == 2) {
        ind = (result1 * 9) % 10;
        if(ind==0){
          ind=10;
        }
        results.add(ind.toString());
      } else if (index == 3) {
        ind = (result1 * 3) % 8;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 4) {
        ind = (result1 * 8) % 27;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 5) {
        ind = (result1 * 9) % 7;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 6) {
        ind = (result1 * 4) % 9;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 7) {
        ind = (result1 * 9) % 4;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 8) {
        ind = (result1 * 9) % 30;
        results.add(notes[index]['answer'][ind]);
      } else if (index == 9) {
        ind = (result1 * 4) % 12;
        results.add(notes[index]['answer'][ind]);
      }
    }

    int lastVal = 0;
    lastVal = (result1 * 27) % 100;
    results.add(lastVal.toString());

    String nethiram1 = "1 கண்";
    String nethiram2 = "2 கண்";
    String nethiram3 = "குருட்டுக்கண்";

    if(results[5]=="ஞாயிறு"){
        if(results[4]=='ரோகிணி'||results[4]=='மிருகாசீரிடம்'||results[4]=='திருவாதிரை'||results[4]=='புனர்பூசம்'||results[4]=='பூசம்'||results[4]=='ஆயில்யம்'||results[4]=='மகம்'||
        results[4]=='பூரம்'||results[4]=='உத்திரம்'){
            results.add(nethiram1);
        } 
        else if(results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'||
        results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'||
        results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'||
        results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'){
            results.add(nethiram2);
        }
        else if(results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'||
        results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'){
            results.add(nethiram3);
        }
    }
    else if(results[5]=="திங்கள்"){
        if(results[4]=='புனர்பூசம்'||
        results[4]=='பூசம்'||
        results[4]=='ஆயில்யம்'||
        results[4]=='மகம்'||
        results[4]=='பூரம்'||
        results[4]=='உத்திரம்'||
        results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'){
            results.add(nethiram1);
        }
        else if(results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'||
        results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'||
        results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'||
        results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'){
            results.add(nethiram2);
        }
        else if(results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'||
        results[4]=='ரோகிணி'||
        results[4]=='மிருகாசீரிடம்'||
        results[4]=='திருவாதிரை'){
            results.add(nethiram3);
        }
    }
    else if(results[5]=="செய்வாய்"){
      if(results[4]=='மகம்'||
        results[4]=='பூரம்'||
        results[4]=='உத்திரம்'||
        results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'||
        results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'){
          results.add(nethiram1);
      }
      else if(results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'||
        results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'||
        results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'||
        results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'){
          results.add(nethiram2);
      }
      else if(results[4]=='ரோகிணி'||
        results[4]=='மிருகாசீரிடம்'||
        results[4]=='திருவாதிரை'||
        results[4]=='புனர்பூசம்'||
        results[4]=='பூசம்'||
        results[4]=='ஆயில்யம்'){
          results.add(nethiram3);
      }
    }
    else if(results[5]=="புதன்"){
      if(results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'||
        results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'||
        results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'){
          results.add(nethiram1);
      }
      else if(results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'||
        results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'||
        results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'||
        results[4]=='ரோகிணி'||
        results[4]=='மிருகாசீரிடம்'||
        results[4]=='திருவாதிரை'){
            results.add(nethiram2);
      }
      else if(results[4]=='புனர்பூசம்'||
        results[4]=='பூசம்'||
        results[4]=='ஆயில்யம்'||
        results[4]=='மகம்'||
        results[4]=='பூரம்'||
        results[4]=='உத்திரம்'){
            results.add(nethiram3);
      }
    }
    else if(results[5]=="வியாழன்"){
      if(results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'||
        results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'||
        results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'){
            results.add(nethiram1);
      }
      else if(results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'||
        results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'||
        results[4]=='ரோகிணி'||
        results[4]=='மிருகாசீரிடம்'||
        results[4]=='திருவாதிரை'||
        results[4]=='புனர்பூசம்'||
        results[4]=='பூசம்'||
        results[4]=='ஆயில்யம்'){
            results.add(nethiram2);
      }
      else if(results[4]=='மகம்'||
        results[4]=='பூரம்'||
        results[4]=='உத்திரம்'||
        results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'){
            results.add(nethiram3);
      }
    }
    else if(results[5]=="வெள்ளி"){
      if(results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'||
        results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'||
        results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'){
            results.add(nethiram1);
      }
      else if(results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'||
        results[4]=='ரோகிணி'||
        results[4]=='மிருகாசீரிடம்'||
        results[4]=='திருவாதிரை'||
        results[4]=='புனர்பூசம்'||
        results[4]=='பூசம்'||
        results[4]=='ஆயில்யம்'||
        results[4]=='மகம்'||
        results[4]=='பூரம்'||
        results[4]=='உத்திரம்'){
            results.add(nethiram2);
      }
      else if(results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'||
        results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'){
            results.add(nethiram3);
      }
    }
    else if(results[5]=="சனி"){
      if(results[4]=='திருவோணம்'||
        results[4]=='அவிட்டம்'||
        results[4]=='சதயம்'||
        results[4]=='பூரட்டாதி'||
        results[4]=='உத்திரட்டாதி'||
        results[4]=='ரேவதி'||
        results[4]=='அசுவினி'||
        results[4]=='பரணி'||
        results[4]=='கார்த்திகை'){
          results.add(nethiram1);
      }
      else if(results[4]=='ரோகிணி'||
        results[4]=='மிருகாசீரிடம்'||
        results[4]=='திருவாதிரை'||
        results[4]=='புனர்பூசம்'||
        results[4]=='பூசம்'||
        results[4]=='ஆயில்யம்'||
        results[4]=='மகம்'||
        results[4]=='பூரம்'||
        results[4]=='உத்திரம்'||
        results[4]=='அஸ்தம்'||
        results[4]=='சித்திரை'||
        results[4]=='சுவாதி'){
          results.add(nethiram2);
      }
      else if(results[4]=='விசாகம்'||
        results[4]=='அனுஷம்'||
        results[4]=='கேட்டை'||
        results[4]=='மூலம்'||
        results[4]=='பூராடம்'||
        results[4]=='உத்திராடம்'){
          results.add(nethiram3);
      }
    }

    int row = notes[4]['answer'].indexOf(results[4]);
    int col = notes[5]['answer'].indexOf(results[5]);

    results.add(yogam[row][col] + ' யோகம்');

    for(int k=0;k<results.length;k++){
      print(results[k]);
    }

     setState(() {
      appState = 1;
      isVisible = true;
      printIsVisible =true;
    });
  }

  void reset() {
    setState(() {
      appState = 0;
      isVisible = false;
      printIsVisible = false;
      results = [];
      numerator = '0';
      denominator = '0';
      rem1 = '0';
      rem2 = '0';

    });
  }

  



  // Widget listElement(String heading,String value){
  //   return Container(child:ListItem(heading,value));
  // }

  Widget buildChild() {
      if(appState == 0)
      {
          return Input(calculate);
      }// InteractiveViewer(
        //          //boundaryMargin: EdgeInsets.all(20.0),
        //  minScale: 0.1,
        // maxScale: 1.6,
        // // Zoom(
        // //   width: 500,
        // //   height: 500,
        //   child: 
      else if(appState==1) 
      {
          return Result(numerator,rem1,denominator,rem2,areaQ,areaR,result1,result2,result3,result4); 
      }
        //     else if(appState==2){
        //       return PdfPreview(
        //   build: (format) => _generatePdf(format, title),
        // );
        
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('மனைப்பொருத்தம்'),
        actions:[
          new Visibility(
            visible: printIsVisible,
            child:new IconButton(
            icon: new Icon(Icons.print),
            tooltip: 'Prints data',
            onPressed: (){
              setState(() {
                appState=2;
                isVisible = false;
              });
            }
          ),),
        ],
      ),
      body:buildChild(), 
        
          
      floatingActionButton: new Visibility(
        visible: isVisible,
        child:FloatingActionButton(
        onPressed: reset,
        child: Icon(Icons.refresh),
      ),
    
    ));
  }
}
