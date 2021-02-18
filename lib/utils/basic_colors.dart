import 'package:flutter/material.dart';
export 'package:flutter/material.dart';

//************************************************************
// Basic login screen
// Author: Miguel Fagundez
// Color values taking from:
// https://digitalsynopsis.com/design/beautiful-color-ui-gradients-backgrounds/
//************************************************************
class MyBackgroundColors{

  //****************************************************
  // Primary color for button, text and icons in login box
  //****************************************************
   static final MaterialColor myGeneralColor = Colors.pink;
  // static final MaterialColor myGeneralColor = Colors.lightGreen;
  // static final MaterialColor myGeneralColor = Colors.lightBlue;

   // List of colors for background
   // You can include your own colors here
   // You can keep the current format or
   // use Color.fromRGBO(r, g, b, opacity)
  static List<Color> getListColors(int index){
    switch(index){
      case 0:
        // Sexy Blue
        return [
          Color(0xFF2193b0),
          Color (0xFF6dd5ed),
        ];
      case 1:
        // Purple Love
        return [
          Color(0xFFcc2b5e),
          Color (0xFF753a88),
        ];
      case 2:
        // Piglet
        return [
          Color(0xFFee9ca7),
          Color (0xFFffdde1),
        ];
      case 3:
        // Mauve
        return [
          Color(0xFF42275a),
          Color (0xFF734b6d),
        ];
        // 50 Shades of Grey
      case 4:
        return [
          Color(0xFFbdc3c7),
          Color (0xFF2c3e50),
        ];
        //Lush
      case 5:
        return [
          Color(0xFF56ab2f),
          Color (0xFFa8e063),
        ];
        //Tranquil
      case 6:
        return [
          Color(0xFFeecda3),
          Color (0xFFef629f),
        ];
        // Inverse 50 Shades of Grey
      case 7:
        return [
          Color(0xFF2c3e50),
          Color (0xFFbdc3c7),
        ];
      default:
        // Celestial
        return [
          Color(0xFF1d2671),
          Color (0xFFc33764)
        ];
        // You can include your own colors here
        // You can keep the current format or
        // use Color.fromRGBO(r, g, b, opacity)

    }
  }
}