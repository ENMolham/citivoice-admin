import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double paddingTop;
  final double paddingright;
  final FontWeight fontWeight;
  final bool? softWrap;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double paddingLeft;
  final double paddingBottum;
  final double? spaceLines;
  final TextDecoration? decoration;
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontWeight,
    required this.paddingTop,
    required this.paddingright,
    this.softWrap,
    this.overflow,
    this.textAlign = TextAlign.right,
    this.paddingLeft = 0.0,
    this.spaceLines,
    this.paddingBottum = 0.0,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop,
        right: paddingright,
        left: paddingLeft,
        bottom: paddingBottum,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          height: spaceLines,
          decoration: decoration,
        ),
        textAlign: textAlign,
        softWrap: softWrap,
        overflow: overflow,
      ),
    );
  }
}
