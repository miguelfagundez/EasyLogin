import 'dart:async';
import 'package:easy_login/utils/validators.dart';
import 'package:rxdart/rxdart.dart';

//************************************************************
// BloC Pattern and Stream for basic ui validation
//  - Email format
//  - Minimal length password
// Author: Miguel Fagundez
//************************************************************
class LoginBloc with Validators{

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // Change login data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // RXDart
  Stream<bool> get buttonEnable => Rx.combineLatest2(emailStream, passwordStream, (data1, data2) => true);

  // Get login data
  Stream<String> get emailStream => _emailController.stream.transform(emailValidator);
  Stream<String> get passwordStream => _passwordController.stream.transform(passwordValidator);

  // Getting last stream values
  String get email => _emailController.value;
  String get password => _passwordController.value;

  // Avoiding memory leaks
  void dispose(){
    _emailController?.close();
    _passwordController?.close();
  }

}