import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  XFile? imgXFile;
  ImagePicker imagePicker = ImagePicker();

  getImageFromGallery() async {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imgXFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName = TextEditingController();
    return Stack(children: [
      imgXFile == null
          ? Container(
              color: Colors.white,
            )
          : Image.file(File(imgXFile!.path)),
      Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.87),
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 90),
                child: GestureDetector(
                  onTap: getImageFromGallery,
                  child: CircleAvatar(
                    backgroundImage: imgXFile == null
                        ? null
                        : FileImage(File(imgXFile!.path)),
                    radius: 80,
                    child: imgXFile == null
                        ? Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                            size: MediaQuery.of(context).size.width * 50,
                          )
                        : null,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
            // SizedBox(
            //   height: 13,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'vivian',
                  //firstName.text,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Emel',
                  //lastName.text,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 420,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Edit Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.transparent.withOpacity(0.19))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF1D592C),
                                ),
                                child: Center(
                                  child: Container(
                                      height: 11.5,
                                      width: 13.5,
                                      color: Colors.white,
                                      child: Center(
                                          child: Icon(
                                        Icons.compare_arrows,
                                        color: Color(0xFF1D592C),
                                        size: 10,
                                      ))),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Change Name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF1D592C),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.transparent.withOpacity(0.19))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF1D592C),
                                ),
                                child: Center(
                                  child: Container(
                                      height: 11.5,
                                      width: 13.5,
                                      color: Colors.white,
                                      child: Center(
                                          child: Icon(
                                        Icons.compare_arrows,
                                        color: Color(0xFF1D592C),
                                        size: 10,
                                      ))),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Change Email",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF1D592C),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.transparent.withOpacity(0.19))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF1D592C),
                                ),
                                child: Center(
                                  child: Container(
                                      height: 11.5,
                                      width: 13.5,
                                      color: Colors.white,
                                      child: Center(
                                          child: Icon(
                                        Icons.compare_arrows,
                                        color: Color(0xFF1D592C),
                                        size: 10,
                                      ))),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF1D592C),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
