// ignore_for_file: file_names

import 'package:flutter/material.dart';

class cutIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            children: List.generate(
                8,
                (index) => Row(
                      children: [
                        Text("----------"),
                        Icon(Icons.cut),
                        Text("----------")
                      ],
                    ))));
  }
}
