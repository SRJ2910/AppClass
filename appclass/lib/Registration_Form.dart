// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print

import 'dart:io';

import 'package:appclass/Resources/Form%20Resource/inputbox.dart';
import 'package:appclass/Resources/Form%20Resource/submitButton.dart';
import 'package:appclass/pickProfileimg.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';

class Rform extends StatefulWidget {
  const Rform({Key? key}) : super(key: key);

  @override
  State<Rform> createState() => _RformState();
}

class _RformState extends State<Rform> {
  // TextEditingController TextControl = TextEditingController();
  TextEditingController TextControl_Email = TextEditingController();
  TextEditingController TextControl_Name = TextEditingController();
  TextEditingController TextControl_FNmae = TextEditingController();
  TextEditingController TextControl_MName = TextEditingController();
  TextEditingController TextControl_Address = TextEditingController();
  TextEditingController TextControl_PhoneNo = TextEditingController();
  late String dob;
  late String gender;
  late String caste;
  late var img;
  late String imgName;
  var imagePicker = ImagePicker();

  @override
  void initState() {
    dob = "Date of birth";
    img = null;
    imgName = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              pickImg(
                image: img,
                size: 200,
                ontap: () async {
                  XFile? image =
                      await imagePicker.pickImage(source: ImageSource.gallery);

                  setState(() {
                    img = File(image!.path);
                    imgName = image.path.split('/').last;
                  });
                },
              ),
              // Text("$imgName"),
              SizedBox(height: 30),
              InputB(
                Heading: "Email Address",
                InputControl: TextControl_Email,
                icon: Icon(Icons.email),
              ),
              SizedBox(height: 20),
              InputB(
                Heading: 'Name',
                InputControl: TextControl_Name,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 20),
              InputB(
                Heading: "Father's Name",
                InputControl: TextControl_FNmae,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 20),
              InputB(
                Heading: "Mother's Name",
                InputControl: TextControl_MName,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 20),
              Material(
                elevation: 10,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(25)),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(23))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: InkWell(
                        onTap: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              // minTime: DateTime(2018, 3, 5),
                              maxTime: DateTime.now(), onChanged: (date) {
                            // print('change $date');
                            setState(() {
                              dob = date.day.toString() +
                                  '/' +
                                  date.month.toString() +
                                  '/' +
                                  date.year.toString();
                            });
                          }, onConfirm: (date) {
                            // print('confirm $date');
                            setState(() {
                              dob = date.day.toString() +
                                  '/' +
                                  date.month.toString() +
                                  '/' +
                                  date.year.toString();
                            });
                          }, onCancel: () {
                            setState(() {
                              dob = "Date of birth";
                            });
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              dob,
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Flexible(
                    child: Material(
                      elevation: 10,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(25)),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black38),
                            borderRadius:
                                BorderRadius.all(Radius.circular(23))),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: AwesomeDropDown(
                            elevation: 0,
                            dropDownBGColor: Colors.transparent,
                            padding: 0,
                            dropDownList: const ["Male", "Female", "Other"],
                            selectedItem: "Gender",
                            onDropDownItemClick: (selectedItem) {
                              gender = selectedItem;
                            },
                            dropDownListTextStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                backgroundColor: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Material(
                      elevation: 10,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(25)),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black38),
                            borderRadius:
                                BorderRadius.all(Radius.circular(23))),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: AwesomeDropDown(
                            elevation: 0,
                            dropDownBGColor: Colors.transparent,
                            padding: 0,
                            dropDownList: const [
                              "General",
                              "General-EWS",
                              "OBC",
                              "OBC-NCL",
                              "SC",
                              "ST"
                            ],
                            selectedItem: "Category",
                            onDropDownItemClick: (selectedItem) {
                              caste = selectedItem;
                            },
                            dropDownListTextStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                backgroundColor: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InputB(
                Heading: "Address",
                InputControl: TextControl_Address,
                icon: Icon(Icons.home),
              ),
              SizedBox(height: 20),
              InputB(
                Heading: "Phone No.",
                InputControl: TextControl_PhoneNo,
                icon: Icon(Icons.phone),
              ),
              SizedBox(height: 50),
              submitButton(
                text: "Submit",
                icon: Icon(Icons.app_registration_outlined),
                onpressed: () {
                  print("submit");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
