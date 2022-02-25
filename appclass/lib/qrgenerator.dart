// ignore_for_file: prefer_const_constructors

import 'package:appclass/Resources/Form%20Resource/submitButton.dart';
import 'package:appclass/Resources/Qr%20Resources/getQRimg.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr_gen extends StatefulWidget {
  Qr_gen({Key? key}) : super(key: key);

  @override
  State<Qr_gen> createState() => _Qr_genState();
}

class _Qr_genState extends State<Qr_gen> {
  late String codeValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR CODE GENERATOR"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Getqrimg(text: "202011069"),
              SizedBox(
                height: 200,
              ),
              ElevatedButton(
                onPressed: () async {
                  ScanResult codeSanner = await BarcodeScanner.scan();
                  setState(() {
                    codeValue = codeSanner.rawContent;
                  });
                },
                child: Text("Scanner"),
              ),
              Text(codeValue)
            ],
          ),
        ),
      ),
    );
  }
}
