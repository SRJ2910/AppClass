// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Profileimg extends StatelessWidget {
  late String textLink;
  late String name;

  Profileimg({required this.textLink, required this.name});

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
            child: Image.network(
              textLink,
              width: 150,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
                width: 150,
                child: Center(
                    child: Text(
                  name,
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
