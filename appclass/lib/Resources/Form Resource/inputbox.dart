import 'package:flutter/material.dart';

class InputB extends StatelessWidget {
  final String Heading;
  final TextEditingController InputControl;
  final Icon icon;

  InputB(
      {required this.Heading, required this.InputControl, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              label: Row(
                children: [
                  icon,
                  SizedBox(
                    width: 10,
                  ),
                  Text(Heading)
                ],
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))))),
    );
  }
}
