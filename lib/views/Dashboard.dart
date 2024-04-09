import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/colors_theme.dart';
import '../components/custom_size.dart';
import '../components/widgets/custom_text.dart';
import '../components/widgets/custom_text_felid.dart';
import '../model/pdf_api.dart';
import 'package:pdfx/pdfx.dart';
import '../model/provider_app.dart';
import '../model/user_info.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Uint8List? o ;

  @override
  Widget build(BuildContext context) {
    UserInformation? userInfo =
        UserInformation(Job_Title: "مطور تطبيقات", Name: "ناصر أبكر");
    CustomSizes().init(context);
    TextEditingController name = TextEditingController();
    TextEditingController job = TextEditingController();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('data')),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/africa_logo.png',
              width: CustomSizes.sizeIcon!,
              height: CustomSizes.sizeIcon!,
            ),
            Container(
              width: CustomSizes.width,
              alignment: Alignment.topCenter,
              child: Text(
                "بطاقة تهنئة",
                style: TextStyle(
                    fontSize: CustomSizes.textSize!,
                    fontWeight: FontWeight.bold,
                    color: ColorTheme.brown),
              ),
            ),
            Center(
              child: Column(
                children: [
                  TextFormFieldItem(
                    width: CustomSizes.width! * 0.8,
                    controller: name,
                    hintText: "ادخل اسمك",
                    keyboardType: TextInputType.text,
                    labelText: "الاسم",
                  ),
                  TextFormFieldItem(
                    width: CustomSizes.width! * 0.8,
                    controller: job,
                    hintText: "ادخل وظيفتك",
                    keyboardType: TextInputType.text,
                    labelText: "الوظيفة",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () async{

                           List<int> b =  await PdfApi().createCertificate(user: userInfo) ;
                           setState(() {



                             o =   Uint8List.fromList(b);
                           });

                          },
                          child: Text(
                            "تحميل ",
                            style: TextStyle(
                                fontSize: CustomSizes.textSize!,
                                color: ColorTheme.white,
                                fontWeight: FontWeight.bold,),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(ColorTheme.brown),
                          ),
                        ),
                      ),
                    ],
                  ),

                  o!= null?  SizedBox(
                    width: 400,height: 400,
                    child: PdfViewPinch(
                                  scrollDirection: Axis.vertical,
                                  controller: PdfControllerPinch(
                    document: PdfDocument.openData(o!)
                                    ,
                                )),
                  ): SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
