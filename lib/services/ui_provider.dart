import 'package:easy_login/services/login_bloc.dart';
import 'package:flutter/material.dart';

//************************************************************
// UI Provider - Handle app ui data
// Author: Miguel Fagundez
//************************************************************
class Provider extends InheritedWidget {

  static Provider _provider;

  // Singleton
  factory Provider({Key key, Widget child}){
    if (_provider == null){
      _provider = new Provider._internal(key: key, child: child);
    }

    return _provider;
  }

  final loginBloc = LoginBloc();

  // Singleton
  Provider._internal({Key key, Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LoginBloc of( BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }
}