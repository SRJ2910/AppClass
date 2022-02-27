import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class Sample extends StatefulWidget {
  Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  ScreenshotController screenshotController = ScreenshotController();
  late File images;

  @override
  void initState() {
    super.initState();
    images = File("path");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Screenshot(
              controller: screenshotController,
              child: Column(
                children: [
                  Text("data1"),
                  Text("data2"),
                  Text("data3"),
                  Text("data4"),
                  Container(
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                  )
                ],
              ),
            ),
          ),
          TextButton(
              onPressed: () async {
                screenshotController
                    .capture(delay: Duration(milliseconds: 10))
                    .then((capturedImage) async {
                  File im = await imagefile(capturedImage!);
                  setState(() {
                    images = im;
                  });
                }).catchError((onError) {
                  print("onError");
                });
              },
              child: Text("Image")),
          Container(child: Image.file(images))
        ],
      ),
    );
  }

  imagefile(Uint8List capturedImage) async {
    Uint8List imageInUnit8List = capturedImage;
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/image.png').create();
    print(file.path);
    file.writeAsBytesSync(imageInUnit8List);
    return file;
  }
}
