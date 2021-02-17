import 'package:flutter/material.dart';

//************************************************************
// Temporal Home class
// Author: Miguel Fagundez
//************************************************************
class HomeScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Login was Successful'),
      ),
    );
  }
}
