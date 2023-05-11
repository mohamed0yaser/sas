import 'package:flutter/material.dart';
import 'package:sas/app_color.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.text,
    this.controller,
    this.obscureText = false,
    required this.validator,
    required this.onChanged,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.onSaved,
    this.topHeightTextFormField = 2,
    this.letterSpacing = 0,
    this.hintText = "",
    this.prefixIcon,
    this.suffixIcon,
    this.autoValidateMode = false,
  });

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool autofocus;
  final String text;
  final TextEditingController? controller;
  final bool obscureText;
  final int maxLines;
  final String? Function(String?) validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextInputType keyboardType;
  final int topHeightTextFormField;
  final double letterSpacing;
  final String hintText;
  final bool autoValidateMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: TextFormField(
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        // style: TextStyle(
        //     color: AppColor.wColor,
        //     fontSize: 15.sp,
        //     letterSpacing: letterS
        //     pacing),
        autofocus: autofocus,
        autovalidateMode:
            autoValidateMode ? AutovalidateMode.onUserInteraction : null,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        maxLines: maxLines,
        obscureText: obscureText,
        controller: controller,
        cursorHeight: 2,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.colorGreen)
          ),
          fillColor: Colors.black45,
          labelStyle: const TextStyle(
            color: Colors.grey,
            letterSpacing: 1,
            fontSize: 14
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
            letterSpacing: 1,
            fontSize: 14.5,
          ),
          // filled: true,
          alignLabelWithHint: false,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: text,
          // labelStyle: TextStyle(color: AppColor.bColor.withOpacity(0.8)),
          floatingLabelStyle: const TextStyle(color: AppColor.colorGreen),
        ),
      ),
    );
  }
}
