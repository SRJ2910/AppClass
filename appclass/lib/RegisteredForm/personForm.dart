// ignore_for_file: file_names

import 'package:appclass/RegisteredForm/ScissorCut.dart';
import 'package:appclass/Resources/Qr%20Resources/getQRimg.dart';
import 'package:appclass/Resources/Registered%20Form%20Resource/HeadingTextBox.dart';
import 'package:appclass/Resources/Registered%20Form%20Resource/Profileimg.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

class PersonForm extends StatefulWidget {
  const PersonForm({Key? key}) : super(key: key);

  @override
  State<PersonForm> createState() => _PersonFormState();
}

class _PersonFormState extends State<PersonForm> {
  // ScreenshotController snap = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Image.network(
                      "https://dcassetcdn.com/design_img/1122986/29354/29354_6281704_1122986_109f415f_image.png"),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Getqrimg(text: "202011069"),
                        HeadingTextbox(
                            text: "Registration ID", Value: "202011069"),
                        HeadingTextbox(text: "Designation", Value: "Student"),
                        HeadingTextbox(text: "Name", Value: "Suraj Kumar"),
                        HeadingTextbox(
                            text: "Father's Name", Value: "Rajesh Kumar"),
                        HeadingTextbox(
                            text: "Mother's Name", Value: "Maya Kumar"),
                        HeadingTextbox(
                            text: "Date of Birth", Value: "05/04/2001"),
                        HeadingTextbox(text: "Gender", Value: "Male"),
                        HeadingTextbox(text: "Category", Value: "OBC-NCL"),
                        HeadingTextbox(
                            text: "Address", Value: "Khagaria, Bihar"),
                        HeadingTextbox(text: "Phone No.", Value: "7250952280"),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Profileimg(
                        textLink:
                            "https://www.clipartmax.com/png/full/231-2318072_if-you-are-self-employed-passport-size-photo-cartoon.png",
                        name: "Suraj Kumar"),
                    SizedBox(
                      width: 10,
                    ),
                    Getqrimg(text: "202011069"),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                cutIcon(),
                SizedBox(
                  height: 80,
                ),
                Material(
                  elevation: 30,
                  borderRadius: BorderRadius.circular(23),
                  child: Container(
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5),
                        borderRadius: BorderRadius.circular(23)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            "IDENTITY-CUM-ATTENDANCE CARD",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Profileimg(
                                  textLink:
                                      "https://www.clipartmax.com/png/full/231-2318072_if-you-are-self-employed-passport-size-photo-cartoon.png",
                                  name: "Suraj Kumar"),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Getqrimg(text: "202011069"),
                                  HeadingTextbox(
                                      text: "Registration ID",
                                      Value: "202011069"),
                                  HeadingTextbox(
                                      text: "Name", Value: "Suraj Kumar"),
                                  HeadingTextbox(
                                      text: "Father's Name",
                                      Value: "Rajesh Kumar"),
                                  // HeadingTextbox(
                                  //     text: "Mother's Name", Value: "Maya Kumar"),
                                  HeadingTextbox(
                                      text: "Date of Birth",
                                      Value: "05/04/2001"),
                                  HeadingTextbox(text: "Gender", Value: "Male"),
                                  // HeadingTextbox(text: "Category", Value: "OBC-NCL"),
                                  HeadingTextbox(
                                      text: "Address",
                                      Value: "Khagaria, Bihar"),
                                  // HeadingTextbox(
                                  //     text: "Phone No.", Value: "7250952280"),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Getqrimg(text: "202011069"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
