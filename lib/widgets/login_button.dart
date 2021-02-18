import 'package:easy_login/services/ui_provider.dart';
import 'package:easy_login/utils/basic_colors.dart';
import 'package:easy_login/utils/constants.dart';

//************************************************************
// Button Login Widget
// Author: Miguel Fagundez
//************************************************************
class LoginButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return StreamBuilder(
        stream: bloc.buttonEnable,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return ElevatedButton(
            onPressed: snapshot.hasData ? (){
              //Navigator.pushNamed(context, Constants.HOME_ROUTE);
              Navigator.pushReplacementNamed(context, Constants.HOME_ROUTE);
            } : null,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Constants.LOGIN_BUTTON_PADDING_VERTICAL,
                  horizontal: Constants.LOGIN_BUTTON_PADDING_HORIZONTAL
              ),
              child: Text(Constants.LOGIN_BUTTON_TITLE),
            ),
            // style: ButtonStyle(
            //   shape:
            // ) ,
            style: ElevatedButton.styleFrom(
              primary: MyBackgroundColors.myGeneralColor,
              shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(Constants.LOGIN_BUTTON_CORNERS))),
              elevation: Constants.LOGIN_BUTTON_ELEVATION,
            ) ,
          );
        }
    );
  }
}
