import 'package:flutter/material.dart';

import '../colors_theme.dart';
import '../custom_size.dart';



// ignore: must_be_immutable
class TextFormFieldItem extends StatelessWidget {
  TextFormFieldItem(
      {Key? key,
      required this.controller,
      this.suffixIcon,
      this.obscureText = false,
      required this.labelText,
      required this.hintText,
      required this.keyboardType,
      this.onChanged,
      this.suffixIconHorPadding = 0,
      this.suffixIconVerPadding = 0,
      required this.width})
      : super(key: key);
  TextEditingController controller = TextEditingController();
  String hintText;
  String labelText;
  bool obscureText;
  Widget? suffixIcon;
  double width;
  double suffixIconHorPadding;
  double suffixIconVerPadding;

  TextInputType keyboardType;

  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    CustomSizes().init(context);

    return Container(
      padding: EdgeInsets.all(CustomSizes.paddingSize! * 1),
      width: width,

      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIconColor: ColorTheme.brown,
          suffixIcon: Padding(
            child: suffixIcon,
            padding: EdgeInsets.symmetric(
                vertical: suffixIconVerPadding,
                horizontal: suffixIconHorPadding),
          ),
          prefixIconColor: ColorTheme.brown,
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
              color: ColorTheme.lightBrown, fontSize: CustomSizes.textSize!*0.9),
          labelStyle: TextStyle(
              color: ColorTheme.brown,
              decorationColor: ColorTheme.brown,
              fontSize: CustomSizes.textSize!*0.9),
          focusColor: ColorTheme.brown,
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorTheme.brown,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          border:  OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorTheme.brown,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
