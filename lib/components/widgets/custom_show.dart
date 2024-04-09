
import 'package:flutter/material.dart';

import '../colors_theme.dart';
import '../custom_size.dart';


customShowDialog(
    {required BuildContext context,
    required String textTitle,
    required String textContent,
    required String textButton,
    required Function() onPressed}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 20,
          height: 20,
          child: AlertDialog(
            title: Text(
              textTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorTheme.black,
                  fontSize: CustomSizes.textSize! * 1.5),
            ),
            buttonPadding: EdgeInsets.zero,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none),
            backgroundColor: ColorTheme.white,
            content: Container(
              width: CustomSizes.width! * 0.50,
              height: CustomSizes.height! * 0.10,
              child: Text(
                textAlign: TextAlign.center,
                textContent,
                style: TextStyle(
                    color: ColorTheme.black,
                    fontSize: CustomSizes.textSize! * 1.3),
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("الغاء",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: CustomSizes.textSize! * 1.3,
                              color: Colors.red))),
                  MaterialButton(
                      onPressed: onPressed,
                      child: Text(textButton,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: CustomSizes.textSize! * 1.3,
                              color: ColorTheme.brown))),
                ],
              ),
            ],
          ),
        );
      });
}
