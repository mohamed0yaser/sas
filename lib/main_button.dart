import 'package:flutter/material.dart';
import 'package:sas/app_color.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.paddingVertical = 1.5,
    this.colorButton = AppColor.colorGreen,
    this.borderRadius = 5,
    this.fontSizeText = 13,
    this.isBorderSide = false,
    this.iconOrImageButtonWidget,
    this.isQuestionMaterialColor = false,
    this.backgroundColorButtonByMaterial,
    this.colorSide = AppColor.colorGreen,
    this.isTextCenter = true,
    this.textColor = Colors.white,
    this.minimumSize,
  });

  final bool isTextCenter;
  final Color textColor;
  final Color colorSide;
  final Color colorButton;
  final String text;
  final VoidCallback onPressed;
  final double paddingVertical;
  final double borderRadius;
  final double fontSizeText;
  final bool isBorderSide;
  final Widget? iconOrImageButtonWidget;
  final bool isQuestionMaterialColor;
  final MaterialStateProperty<Color?>? backgroundColorButtonByMaterial;
  final MaterialStateProperty<Size?>? minimumSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: minimumSize,
        side: isBorderSide
            ? MaterialStateProperty.all(
                BorderSide(color: colorSide),
              )
            : null,
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 3)),
        backgroundColor: isQuestionMaterialColor
            ? backgroundColorButtonByMaterial
            : MaterialStateProperty.all(colorButton),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Row(
          mainAxisAlignment:
              isTextCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            iconOrImageButtonWidget ?? const SizedBox.shrink(),
            Text(
              text,
              style: TextStyle(
                fontSize: fontSizeText,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
