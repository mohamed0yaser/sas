import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'dart:io';

import 'package:sas/app_color.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture}) : super(key: key);

  final List picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.colorGreen,
          title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture[0]), fit: BoxFit.cover, width: 250),

          const SizedBox(height: 24),
          //Text(picture.name),
          OutlinedButton(onPressed: () {

            //GallerySaver.saveImage(picture.path);
          },
            child:Text("save",style: TextStyle(
              color: AppColor.colorGreen
            ),),)
        ]),
      ),
    );

  }
}
