import 'package:flutter/material.dart';
import 'package:login_signup_food/Screens/Welcome/Components/background.dart';

class ForgotPasswordScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
            width: 100,
            height: 70,
          ),

          Text(
            "Reset Password",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white) ,),
              SizedBox(
                width: 100,
                height: 50,)






            ])


    )));


  }


}




