import 'package:flutter/material.dart';
import 'package:login_signup_food/Screens/Login/login_screen.dart';
import 'package:login_signup_food/Screens/SignUp/signup_screen.dart';
import 'package:login_signup_food/Screens/Welcome/Components/background.dart';
import 'package:login_signup_food/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
            ),
            //Image.asset("assets/images/foodimages.jpg",height: size.height * 0.45,),
            SizedBox(
              width: 100,
              height: 300,
            ),
            Container(
              width: size.width*0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: FlatButton(
                    padding:EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                    color: kPrimaryColor,
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}, child: Text('LOGIN', style:TextStyle(color: Colors.white,fontSize: 15))),
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              width: size.width*0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: FlatButton(
                    padding:EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                    color: kPrimaryLightColor,
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));}, child: Text('SIGN UP', style:TextStyle(color: Colors.black,fontSize: 15))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
