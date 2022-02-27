// ignore_for_file: file_names

import 'package:appclass/RegisteredForm/ScissorCut.dart';
import 'package:appclass/Resources/Qr%20Resources/getQRimg.dart';
import 'package:appclass/Resources/Registered%20Form%20Resource/HeadingTextBox.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

class PersonForm extends StatefulWidget {
  const PersonForm({Key? key}) : super(key: key);

  @override
  State<PersonForm> createState() => _PersonFormState();
}

class _PersonFormState extends State<PersonForm> {
  ScreenshotController snap = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registerd form"),
      ),
      body: Screenshot(
        controller: snap,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.black12,
              ),
              cutIcon(),
              Container(
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Getqrimg(text: "Image"),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Getqrimg(text: "202011069"),
                        HeadingTextbox(text: "Name", Value: "Suraj Kumar"),
                        HeadingTextbox(
                            text: "Father's Name", Value: "Rajesh Kumar"),
                        // HeadingTextbox(
                        //     text: "Mother's Name", Value: "Maya Kumar"),
                        HeadingTextbox(
                            text: "Date of Birth", Value: "05/04/2001"),
                        HeadingTextbox(text: "Gender", Value: "Male"),
                        // HeadingTextbox(text: "Category", Value: "OBC-NCL"),
                        HeadingTextbox(
                            text: "Address", Value: "Khagaria, Bihar"),
                        HeadingTextbox(text: "Phone No.", Value: "7250952280"),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Getqrimg(text: "202011069"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
