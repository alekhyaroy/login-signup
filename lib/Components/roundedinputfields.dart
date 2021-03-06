import 'package:flutter/material.dart';
import 'package:login_signup_food/constants.dart';
import 'package:login_signup_food/Components/textfieldcontainer.dart';

class RoundedInputFieldEmail extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldEmail({
    Key? key, required this.hintText,  this.icon=Icons.person, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(Icons.email,color: kPrimaryColor,),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: InputBorder.none,),),);
  }
}

class RoundedInputFieldName extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldName({
    Key? key, required this.hintText,  this.icon=Icons.person, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(Icons.person,color: kPrimaryColor,),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: InputBorder.none,),),);
  }
}

class RoundedInputFieldContact extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldContact({
    Key? key, required this.hintText,  this.icon=Icons.person, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(Icons.phone,color: kPrimaryColor,),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: InputBorder.none,),),);
  }
}