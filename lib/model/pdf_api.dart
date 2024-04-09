import 'dart:ui';
import 'package:certification_app/model/save_file_mobile.dart'
    if (dart.library.html) 'package:certification_app/model/save_file_web.dart';

import 'package:certification_app/model/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class PdfApi {

  Future<List<int>> createCertificate({required UserInformation user}) async {
    //start get Date Now


    //dummy data name

    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //start Settings a PDF document.
    document.pageSettings.orientation = PdfPageOrientation.landscape;
    document.pageSettings.margins.all = 0;
    document.pageSettings.size = PdfPageSize.flsa;
    //end Settings a PDF document.

    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Get the page size
    final Size pageSize = page.getClientSize();
    //Create a custom font
    PdfFont font =
        PdfTrueTypeFont(await _readFontData(), 25, style: PdfFontStyle.bold,);

    //start Draw certificate image
    page.graphics.drawImage(
      PdfBitmap(await _readImageData('certificate.jpeg')),
      Rect.fromLTWH(
        0,
        0,
        pageSize.width,
        pageSize.height,
      ),
    );
    //end Draw certificate image

    //start Draw text of name
    page.graphics.drawString(user.Job_Title, font,
        bounds: Rect.fromLTWH(
            0, 7, page.getClientSize().width/0.98, page.getClientSize().height/0.78),
        brush: PdfSolidBrush(
          PdfColor(0, 0, 0),
        ),
        format: PdfStringFormat(
            textDirection: PdfTextDirection.rightToLeft,
            alignment: PdfTextAlignment.right,
            paragraphIndent: page.getClientSize().width / 8,
            lineAlignment: PdfVerticalAlignment.middle));
    //end Draw text of name
    //start Draw text of nationality

    //end Draw text of nationality
    //start Draw text of id
    page.graphics.drawString(user.Name, font,
        bounds: Rect.fromLTWH(
            0, 52, page.getClientSize().width, page.getClientSize().height/0.95),
        brush: PdfSolidBrush(
          PdfColor(194, 153, 121),
        ),
        format: PdfStringFormat(

            textDirection: PdfTextDirection.rightToLeft,
            alignment: PdfTextAlignment.right,
            paragraphIndent: page.getClientSize().width / 8,
            lineAlignment: PdfVerticalAlignment.middle));
    //end Draw text of id

    //Save data file  .
    final List<int> bytes = await document.save();
    //Dispose the document.
    document.dispose();

    //Save and launch file.

    await FileSaveHelper.saveAndLaunchFile(bytes, 'Certificate.pdf',);
    return bytes ;
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
// send pdfFile as params

}
