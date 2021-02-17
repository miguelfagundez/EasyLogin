import 'package:easy_login/utils/constants.dart';
import 'package:easy_login/widgets/login_button.dart';
import 'package:easy_login/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//************************************************************
// Login Widget - Basic login UI
// Author: Miguel Fagundez
//************************************************************
class LoginBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
                height: Constants.LOGIN_SAFE_AREA_HEIGHT,
              )
          ),
          Container(
            width: screenSize.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: Constants.LOGIN_BOX_MARGING,),
            padding: EdgeInsets.symmetric(vertical: Constants.LOGIN_BOX_PADDING,),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.LOGIN_BOX_CORNERS),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(5.0,10.0),
                  spreadRadius: 3.0,
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Text('A login example', style: TextStyle(fontSize: Constants.LOGIN_TITLE_FONT_SIZE, ),),
                SizedBox(height: Constants.LOGIN_DEFAULT_SEPARATION_HEIGHT,),
                LoginTextField(isEmail: true),
                LoginTextField(isEmail: false),
                SizedBox(height: Constants.LOGIN_DEFAULT_SEPARATION_HEIGHT,),
                LoginButtonWidget(),
                SizedBox(height: Constants.LOGIN_DEFAULT_SEPARATION_HEIGHT / 2.0,),
              ],
            ),
          ),
          Text('Forgot password?'),
          SizedBox(height: 150.0,)
        ],
      ),
    );
  }
}

