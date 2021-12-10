import 'package:flutter/material.dart';
import 'package:login_signup_food/Components/alreadyhaveanaccountcheck.dart';
import 'package:login_signup_food/Components/ordivider.dart';
import 'package:login_signup_food/Components/roundedinputfields.dart';
import 'package:login_signup_food/Components/roundedpasswordfields.dart';
import 'package:login_signup_food/Screens/Login/login_screen.dart';
import 'package:login_signup_food/Screens/Welcome/Components/background.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:login_signup_food/constants.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({Key? key}) : super(key: key);
  static const IconData facebook = IconData(0xe255, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Material(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 10,
              ),

              Text(
                "SignUp",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),),
              SizedBox(
                width: 100,
                height: 20,
              ),
              RoundedInputFieldName(hintText: "Name", onChanged: (value) {}),
              RoundedInputFieldContact(
                  hintText: "Contact Number", onChanged: (value) {}),
              RoundedInputFieldEmail(hintText: "Email", onChanged: (value) {}),
              RoundedPasswordField(onChanged: (value) {}),
              SizedBox(
                width: 100,
                height: 10,
              ),
              Container(
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: kPrimaryColor,

                    onPressed: () {},
                    child: Text('SIGN UP',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),

                ),
              ),
              SizedBox(
                width: 100,
                height: 18,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              OrDivider(),
              Column(
                children: [
                  SignInButton(
                    Buttons.Facebook,
                    //mini: true,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Google,
                    //mini: true,
                    onPressed: () {},
                  )
                ],




              )


            ],
          ),
        ),
      ),
    );
  } }






