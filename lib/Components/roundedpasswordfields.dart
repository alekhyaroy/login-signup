import 'package:flutter/material.dart';
import 'package:login_signup_food/Components/textfieldcontainer.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      obscureText:true,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: kPrimaryColor),
          icon:Icon(Icons.lock,color: kPrimaryColor,),
          suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,),
          border: InputBorder.none),));
  }
}
