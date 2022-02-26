// ignore_for_file: file_names, camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class pickImg extends StatefulWidget {
  Function ontap;
  var image;
  double size;

  pickImg({required this.ontap, required this.image, required this.size});

  @override
  State<pickImg> createState() => _pickImgState();
}

class _pickImgState extends State<pickImg> {
  @override
  Widget build(BuildContext context) {
    var _image = widget.image;
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(200),
        splashColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Material(
            elevation: 25,
            clipBehavior: Clip.hardEdge,
            borderRadius:
                const BorderRadiusDirectional.all(Radius.circular(250)),
            color: Colors.white,
            child: Container(
              height: widget.size,
              width: widget.size,
              decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(230)),
              child: _image != null
                  ? Image.file(
                      _image,
                      fit: BoxFit.fill,
                      // scale: 0.5,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 250 * (widget.size / 300),
                        ),
                      ],
                    ),
            ),
          ),
        ),
        onTap: () {
          widget.ontap();
        },
      ),
    );
  }
}
