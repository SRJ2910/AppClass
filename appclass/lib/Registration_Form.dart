// ignore_for_file: file_names

import 'package:appclass/Resources/Form%20Resource/inputbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Rform extends StatefulWidget {
  const Rform({Key? key}) : super(key: key);

  @override
  State<Rform> createState() => _RformState();
}

class _RformState extends State<Rform> {
  TextEditingController TextControl = TextEditingController();
  late String dob;
  @override
  void initState() {
    dob = "Date of Birth";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(TextControl.text);
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InputB(
                Heading: 'Name',
                InputControl: TextControl,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              InputB(
                Heading: "Father's Name",
                InputControl: TextControl,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              InputB(
                Heading: "Mother's Name",
                InputControl: TextControl,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              InkWell(
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
                        dob = "Date of Birth";
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        dob,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              InputB(
                Heading: "Address",
                InputControl: TextControl,
                icon: Icon(Icons.home),
              ),
              SizedBox(height: 10),
              InputB(
                Heading: "Phone No.",
                InputControl: TextControl,
                icon: Icon(Icons.phone),
              ),
              SizedBox(height: 10),
              InputB(
                Heading: "Email Address",
                InputControl: TextControl,
                icon: Icon(Icons.email),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
