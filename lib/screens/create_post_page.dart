import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:nile_nini_web/constants.dart';
import 'welcome_page.dart';
//import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:flutter_web_image_picker/flutter_web_image_picker.dart';

File imageURI;
String result;
String result2;
String result3;
String path;

class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  var image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.open_in_browser),
        onPressed: () async {
          final _image = await FlutterWebImagePicker.getImage;
//          final _image = await FlutterWebImagePicker.pickImage();
          setState(() {
            image = _image;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Post Fields
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image Box
                  imageURI == null
                      ? Text('No image selected.')
                      : Image.file(imageURI,
                          width: 299, height: 299, fit: BoxFit.cover),

                  image != null ? image : Text('No data...'),
                  // Buttons for selecting
                  SizedBox(),
                  //TODO: Caption TexField
                  CaptionTextField(),
                  SizedBox(),
                  //TODO: Preview Button
                  CallToAction(
                    title: 'Preview',
                  ),
                ],
              ),
              //Preview Field
              PreviewPost(),
            ],
          ),
        ),
      ),
    );
  }
}

class CaptionTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 2 / 3,
      width: MediaQuery.of(context).size.width * 6 / 16,
      child: TextField(
        decoration: kTextFieldDecoration,
      ),
    );
  }
}

class PreviewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 6 / 8,
      width: MediaQuery.of(context).size.width * 6 / 16,
      child: Center(
          //TODO: Implement Feed typeB preview
          ),
    );
  }
}
