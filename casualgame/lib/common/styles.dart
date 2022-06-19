import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color blue = Colors.blue;
const Color bgColor = white;
const Color buttonColor = Color.fromARGB(255, 39, 60, 101);
const Color buttonTextColor = blue;
const Color titleColor1 = Color.fromARGB(255, 39, 60, 101);
const Color titleColor2 = blue;
const Color baseColor = Color(0xFFF2F2F2);

TextStyle titleText1 = GoogleFonts.aclonica(
  fontStyle: FontStyle.italic,
  fontSize: 50,
  color: titleColor1,
  shadows: <Shadow>[
    const Shadow(
      offset: Offset(4.0, 4.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    const Shadow(
      offset: Offset(4.0, 4.0),
      blurRadius: 8.0,
      color: Color.fromARGB(124, 0, 0, 0),
    ),
  ],
);
TextStyle titleText2 = GoogleFonts.aclonica(
  fontStyle: FontStyle.normal,
  fontSize: 60,
  color: titleColor2,
  shadows: <Shadow>[
    const Shadow(
      offset: Offset(4.0, 4.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    const Shadow(
      offset: Offset(4.0, 4.0),
      blurRadius: 8.0,
      color: Color.fromARGB(124, 0, 0, 0),
    ),
  ],
);
TextStyle buttonTextStyle = GoogleFonts.aclonica(
  fontStyle: FontStyle.normal,
  fontSize: 18,
  color: buttonTextColor
);
ButtonStyle menuButtonStyle = ButtonStyle(
  backgroundColor:  MaterialStateProperty.all<Color>(buttonColor),
  elevation: MaterialStateProperty.all(10),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);