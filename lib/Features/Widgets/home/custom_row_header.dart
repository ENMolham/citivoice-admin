import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRowHeader extends StatelessWidget {
  final String number;
  final String image;
  final String fullname;
  final String mobiel;
  final String entity;
  final String date;
  final String status;
  final double? width;
  const CustomRowHeader({
    super.key,
    required this.number,
    required this.image,
    required this.fullname,
    required this.mobiel,
    required this.entity,
    required this.date,
    required this.status,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.screenHeight * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: number,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: image,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: fullname,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: mobiel,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: entity,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: status,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: date,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
        ],
      ),
    );
  }
}
