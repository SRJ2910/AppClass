import 'dart:io';
import 'dart:typed_data';

import 'package:appclass/RegisteredForm/personForm.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class Pdfmake extends StatefulWidget {
  Pdfmake({Key? key}) : super(key: key);

  @override
  State<Pdfmake> createState() => _PdfmakeState();
}

class _PdfmakeState extends State<Pdfmake> {
  ScreenshotController screenshotController = ScreenshotController();
  late Uint8List _imageFile;
  bool pdfLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Screenshot(
                  controller: screenshotController,
                  child: PersonForm(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    openPDFofSS();
                  },
                  child: Text("Make Pdf please!!"))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> openPDFofSS() async {
    await screenshotController.capture().then((Uint8List? image) {
      //Capture Done
      setState(() {
        pdfLoading = true;
        //save screenshot into Uint8List image
        _imageFile = image!;
        //convert Unit8List image into PDF
        _convertImageToPDF();
        // saveImage(_imageFile);
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  Future<void> _convertImageToPDF() async {
    //Create the PDF document
    PdfDocument document = PdfDocument();
    //Add the page
    PdfPage page = document.pages.add();
    //Load the image.
    final PdfImage image = PdfBitmap(_imageFile);
    //draw image to the first page
    page.graphics.drawImage(image,
        Rect.fromLTWH(0, 10, page.size.width - 90, page.size.height - 110));
    //Save the docuemnt
    List<int> bytes = document.save();
    //Dispose the document.
    document.dispose();
    //Get external storage directory
    Directory directory = await getApplicationDocumentsDirectory();
    //Get directory path
    String path = directory.path;
    //Create an empty file to write PDF data
    File file = File('$path/Output.pdf');

    //Write PDF data
    await file.writeAsBytes(bytes, flush: true);
    print(path);
    //Open the PDF document in mobile
    OpenFile.open('$path/Output.pdf');
    setState(() {
      pdfLoading = false;
    });
  }
}
