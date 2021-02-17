import 'package:easy_login/services/ui_provider.dart';
import 'package:easy_login/utils/basic_colors.dart';
import 'package:easy_login/utils/constants.dart';

//************************************************************
// TextField Widget - Basic login UI
// Author: Miguel Fagundez
// It works email and password only
//************************************************************
class LoginTextField extends StatelessWidget {

  final bool isEmail;

  // I need to know if this textfield is:
  // - email or password
  LoginTextField({
    @required this.isEmail
  });

  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return StreamBuilder(
        stream: (this.isEmail) ? bloc.emailStream : bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.LOGIN_TEXTFIELD_PADDING),
            child: TextField(
              obscureText: (this.isEmail) ? false : true,
              keyboardType: (this.isEmail) ? TextInputType.emailAddress : TextInputType.text,
              decoration: InputDecoration(
                  icon: Icon((this.isEmail) ? Icons.email_outlined : Icons.lock_outline, color: MyBackgroundColors.myGeneralColor,),
                  hintText: (this.isEmail) ? 'myemail@company.com' : 'password',
                  labelText: (this.isEmail) ? 'Email' : 'Password',
                  errorText: snapshot.error,
              ),
              onChanged: (this.isEmail) ? bloc.changeEmail : bloc.changePassword,
            ),
          );
        }
    );
  }
}
