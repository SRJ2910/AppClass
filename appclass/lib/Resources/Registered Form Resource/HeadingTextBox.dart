// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class HeadingTextbox extends StatelessWidget {
  final String text;
  final String Value;

  HeadingTextbox({required this.text, required this.Value});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(150.0),
        // 1: FlexColumnWidth(),
        2: FixedColumnWidth(150.0),
      },
      defaultColumnWidth: IntrinsicColumnWidth(),
      children: [
        TableRow(
          children: [
            SizedBox(
              height: 30,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              // color: Colors.amberAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    ":",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      Value,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
