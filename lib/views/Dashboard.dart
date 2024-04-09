
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/colors_theme.dart';
import '../components/custom_size.dart';
import '../components/widgets/custom_text.dart';
import '../model/pdf_api.dart';
import '../model/provider_app.dart';
import '../model/user_info.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // UserInformation userInfo = Provider.of<ProviderApp>(context).userInfo;
    CustomSizes().init(context);

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
                "بيانات المساهم",
                style: TextStyle(
                    fontSize: CustomSizes.textSize!,
                    fontWeight: FontWeight.bold,
                    color: ColorTheme.brown),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: customText(
                        text: "الاسم",
                        size: CustomSizes.textSize! / 1.5,
                        color: ColorTheme.brown,
                        bold: true),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () {
                            // PdfApi().createCertificate(user: userInfo);
                          },
                          child: Text(


                            "تحميل الشهادة",
                            style:
                            TextStyle(fontSize: CustomSizes.textSize! / 1.5,),
                          ),
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all(ColorTheme.brown),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);

                          },
                          child: Text(
                            "خروج",
                            style:
                            TextStyle(fontSize: CustomSizes.textSize! / 1.5,),
                          ),                    style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(ColorTheme.brown),
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}