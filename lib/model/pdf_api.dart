import 'package:certification_app/model/save_file_mobile.dart'
    if (dart.library.html) 'package:certification_app/model/save_file_web.dart';

import 'package:certification_app/model/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:jhijri/jHijri.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class PdfApi {
  Future<void> createCertificate({required UserInformation user}) async {
    //start get Date Now
    DateTime now = DateTime.now();
    String textDateOfCreatedG = DateFormat('yyyy-MM-dd').format(now);
    String textDateOfCreatedH = JHijri(fDate: DateTime.now()).toString();
    //end get Date Now

    // //dummy data name
    // String textName = "ناصر ابكر ادم محمد";
    // String textNationality = " السعودية";
    // String textId = " 1020303303";
    // String textShares = " 44030";

    //dummy data name

    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //start Settings a PDF document.
    document.pageSettings.orientation = PdfPageOrientation.landscape;
    document.pageSettings.margins.all = 0;
    document.pageSettings.size = PdfPageSize.a4;
    //end Settings a PDF document.

    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Get the page size
    final Size pageSize = page.getClientSize();
    //Create a custom font
    PdfFont font =
        PdfTrueTypeFont(await _readFontData(), 22, style: PdfFontStyle.bold);

    //start Draw certificate image
    page.graphics.drawImage(
      PdfBitmap(await _readImageData('certificate.png')),
      Rect.fromLTWH(
        0,
        0,
        pageSize.width,
        pageSize.height,
      ),
    );
    //end Draw certificate image

    //start Draw text of name
    page.graphics.drawString(user.Name, font,
        bounds: Rect.fromLTWH(
            0, 7, page.getClientSize().width, page.getClientSize().height),
        brush: PdfSolidBrush(
          PdfColor(0, 0, 0),
        ),
        format: PdfStringFormat(
            textDirection: PdfTextDirection.rightToLeft,
            alignment: PdfTextAlignment.right,
            paragraphIndent: page.getClientSize().width / 2,
            lineAlignment: PdfVerticalAlignment.middle));
    //end Draw text of name
    //start Draw text of nationality

    //end Draw text of nationality
    //start Draw text of id
    page.graphics.drawString(user.Job_Title, font,
        bounds: Rect.fromLTWH(
            0, 52, page.getClientSize().width, page.getClientSize().height),
        brush: PdfSolidBrush(
          PdfColor(0, 0, 0),
        ),
        format: PdfStringFormat(

            textDirection: PdfTextDirection.rightToLeft,
            alignment: PdfTextAlignment.right,
            paragraphIndent: page.getClientSize().width / 2.25,
            lineAlignment: PdfVerticalAlignment.middle));
    //end Draw text of id
    //start Draw text of Shares

    //end Draw text of Shares
    //start Draw text of dateOfCreated Hijri

    //end Draw text of dateOfCreated Hijri
    //start Draw text of dateOfCreated Gregorian

    //end Draw text of dateOfCreated Gregorian
    //Save data file  .
    final List<int> bytes = await document.save();
    //Dispose the document.
    document.dispose();
    //Save and launch file.
    await FileSaveHelper.saveAndLaunchFile(bytes, 'Certificate.pdf');
  }

  // the method  used to read custom image from a file
  Future<List<int>> _readImageData(String name) async {
    final ByteData data = await rootBundle.load('assets/images/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

// the method  used to read custom font data from a file
  Future<List<int>> _readFontData() async {
    final ByteData bytes = await rootBundle.load('assets/fonts/Sakkal.ttf');
    return bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
  }
}
