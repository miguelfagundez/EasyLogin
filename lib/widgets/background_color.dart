import 'package:easy_login/utils/basic_colors.dart';
import 'package:flutter/material.dart';

//************************************************************
// Widget for drawing a custom color background with linear gradient
// Author: Miguel Fagundez
//************************************************************
class BackgroundColorLinearGradientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: screenSize.height * 0.45,
      decoration: BoxDecoration(
        // Give a small shadow in my background box
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(81, 81, 81, 80.0),
            blurRadius: 10.0,
            offset: Offset.zero,
            spreadRadius: 8.0,

          ),
        ],
        // Applying LinearGradient
        // Values from 0 to 6
        gradient: LinearGradient(
            colors: MyBackgroundColors.getListColors(5),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        ),
      ),
    );
  }
}
