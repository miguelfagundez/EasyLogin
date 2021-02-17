import 'package:easy_login/utils/basic_colors.dart';
import 'package:easy_login/widgets/background_color.dart';
import 'package:easy_login/widgets/background_icon.dart';
import 'package:easy_login/widgets/login_box.dart';

//************************************************************
// Basic login screen
// Author: Miguel Fagundez
//************************************************************
class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
          children: <Widget>[
            //_buildBackgroundColor(context,screenSize),
            BackgroundColorLinearGradientWidget(),
            BackgroundIconWidget(),
            SizedBox(height: 80.0,),
            LoginBox(),
          ],
        )
    );
  }
}
