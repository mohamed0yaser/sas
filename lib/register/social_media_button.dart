import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
           padding: EdgeInsets.all(size.height * 0.01),
           margin: EdgeInsets.all(size.height * 0.01),
          child: Image.asset("images/google.png"),
        ),
        SizedBox(width:size.width * 0.01),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
           padding: EdgeInsets.all(size.height * 0.02),
           margin: EdgeInsets.all(size.height * 0.01),
          child: Image.asset("images/facebook.png"),
        ),
      ],
    );
  }
}