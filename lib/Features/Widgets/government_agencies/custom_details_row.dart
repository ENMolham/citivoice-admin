import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomDetailRow extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomDetailRow({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text1,
          color: ColorConstant.MainColor,
          fontWeight: FontWeight.bold,
          size: context.scaleFont(4),
          paddingTop: context.screenHeight * 0.015,
          paddingLeft: context.screenWidth * 0.01,
          paddingright: context.screenWidth * 0.01,
        ),
        CustomText(
          text: text2,
          fontWeight: FontWeight.w600,
          color: ColorConstant.DarkGrey,
          size: context.scaleFont(4),
          paddingTop: context.screenHeight * 0.015,
          paddingLeft: context.screenWidth * 0.01,
          paddingright: 0,
        ),
      ],
    );
  }
}
