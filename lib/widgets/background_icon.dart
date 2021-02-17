import 'package:easy_login/utils/constants.dart';
import 'package:flutter/material.dart';

//************************************************************
// Icon Widget - You can put your logo here
// Author: Miguel Fagundez
//************************************************************
class BackgroundIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return
      Container(
        padding: EdgeInsets.only(top: Constants.LOGIN_TOP_ICON_PADDING),
        child: Column(
          children: <Widget>[
            Center(child: Icon(Icons.check_circle_outline, color: Colors.white70, size: Constants.LOGIN_TOP_ICON_SIZE,)),
          ],
        ),
    );
  }
}
