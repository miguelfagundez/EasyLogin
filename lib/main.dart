import 'package:easy_login/services/ui_provider.dart';
import 'package:easy_login/ui/home_screen.dart';
import 'package:easy_login/ui/login_screen.dart';
import 'package:easy_login/utils/basic_colors.dart';

import 'package:easy_login/utils/constants.dart';

//************************************************************
// Main class - App
// Author: Miguel Fagundez
//************************************************************
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // You can change it by Multiprovider if you need to handle
    // a list of providers
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constants.APP_WIDGET_TITLE,
        initialRoute: Constants.INITIAL_ROUTE,
        routes: {
          Constants.INITIAL_ROUTE: (BuildContext context) => LoginScreen(),
          // You have to replace your own home class here
          Constants.HOME_ROUTE:  (BuildContext context) => HomeScreem(),

        },
        theme: ThemeData(
          primaryColor: MyBackgroundColors.myGeneralColor
        ),
      ),
    );
  }
}
