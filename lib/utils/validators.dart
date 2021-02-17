import 'dart:async';

//************************************************************
// Validator class
// Author: Miguel Fagundez
//************************************************************
class Validators{

  final emailValidator = StreamTransformer<String, String>.fromHandlers(

      handleData: (email, sink){

        // Check email format
        String regex = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp = new RegExp(regex);

        // Checking if email format is valid
        regExp.hasMatch(email) ? sink.add(email) : sink.addError('Please enter a valid email format');
      }
  );

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(

    // Check if lenght is 8 or more
      handleData: (password, sink){
        (password.length > 7) ? sink.add(password) : sink.addError('Your password should have at least 8 characters');
      }
  );
}