// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Getqrimg extends StatelessWidget {
  late String text;

  Getqrimg({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.all(Radius.circular(23))),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(23))),
            child: QrImage(
              padding: EdgeInsets.all(10),
              data: text,
              version: QrVersions.auto,
              foregroundColor: Colors.black,
              size: 150.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
                width: 150,
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
          )
        ],
      ),
    );
  }
}
