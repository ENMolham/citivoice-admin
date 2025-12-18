import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomReport extends StatelessWidget {
  final String titel;
  final String value;
  final double paddingLeft;
  final IconData icon;
  const CustomReport({
    super.key,
    required this.titel,
    required this.value,
    required this.paddingLeft,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.18,
      height: context.screenHeight * 0.15,
      decoration: BoxDecoration(
        color: ColorConstant.LightPetroleum,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              CustomText(
                text: value,
                color: ColorConstant.White,
                size: context.scaleFont(12),
                fontWeight: FontWeight.bold,
                paddingTop: 0,
                paddingright: 0,
              ),
              CustomText(
                text: titel,
                color: ColorConstant.Beige,
                size: context.scaleFont(4),
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.01,
                paddingright: context.screenWidth * 0.01,
                paddingLeft: paddingLeft,
              ),
            ],
          ),
          Container(
            width: context.screenWidth * 0.05,
            height: context.screenHeight * 0.13,
            decoration: BoxDecoration(
              color: ColorConstant.DarkPetroleum,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: ColorConstant.Beige,
              size: context.scaleIcon(18),
            ),
          ),
        ],
      ),
    );
  }
}
