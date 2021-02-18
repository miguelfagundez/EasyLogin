import 'package:easy_login/utils/constants.dart';
import 'package:flutter/material.dart';

//************************************************************
// Icon Widget - You can put your logo here
// Author: Miguel Fagundez
//************************************************************
class BackgroundIconWidget extends StatelessWidget {

  //IconData icon = Icons.check_circle_outline;
  //IconData icon = Icons.person_pin;
  IconData icon = Icons.language;

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return
      Container(
        padding: EdgeInsets.only(top: Constants.LOGIN_TOP_ICON_PADDING),
        child: Column(
          children: <Widget>[
            Center(child: Icon(icon, color: Colors.white70, size: Constants.LOGIN_TOP_ICON_SIZE,)),
          ],
        ),
    );
  }
}
