// ignore_for_file: file_names

import 'package:flutter/material.dart';

class submitButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function onpressed;

  submitButton(
      {required this.text, required this.icon, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Material(
        color: Color.fromRGBO(56, 182, 255, 50),
        elevation: 5,
        borderRadius: BorderRadiusDirectional.all(Radius.circular(25)),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: BorderRadius.all(Radius.circular(23))),
          child: InkWell(
              // focusColor: Colors.blue,
              radius: 500,
              borderRadius: BorderRadius.all(Radius.circular(23)),
              splashColor: Color.fromRGBO(56, 182, 255, 10),
              highlightColor: Colors.transparent,
              onTap: () {
                onpressed();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(
                    width: 10,
                  ),
                  Text(text),
                ],
              )),
        ),
      ),
      // Material(
      //   color: Colors.blue[100],
      //   elevation: 5,
      //   borderRadius: BorderRadiusDirectional.all(Radius.circular(25)),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 10),
      //     child: InkWell(
      //         onTap: () {
      //           onpressed;
      //         },
      //         child: Row(
      //           children: [
      //             icon,
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Text(text),
      //           ],
      //         )),
      //   ),
      // ),
    );
  }
}
