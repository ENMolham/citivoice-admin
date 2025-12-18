import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String number;
  final String image;
  final String fullname;
  final String mobiel;
  final String entity;
  final String date;
  final String status;
  final double? width;
  final double? paddingimage;
  const CustomRow({
    super.key,
    required this.number,
    required this.image,
    required this.fullname,
    required this.mobiel,
    required this.entity,
    required this.date,
    required this.status,
    this.width,
    this.paddingimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.screenHeight * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: number,
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddingimage ?? context.screenWidth * 0.025,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.asset(
                image,
                width: context.screenWidth * 0.02,
                height: context.screenHeight * 0.04,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: width == null ? context.screenWidth * 0.07 : width,
            child: CustomText(
              text: fullname,
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
