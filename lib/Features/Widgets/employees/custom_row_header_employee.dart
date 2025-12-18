import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRowHeaderEmployee extends StatelessWidget {
  final String image;
  final String fullname;
  final String mobiel;
  final String idnumber;
  final String email;
  final String entity;
  final String date;
  final String status;
  const CustomRowHeaderEmployee({
    super.key,
    required this.image,
    required this.fullname,
    required this.mobiel,
    required this.entity,
    required this.date,
    required this.status,
    required this.idnumber,
    required this.email,
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
            width: context.screenWidth * 0.1,
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
            width: context.screenWidth * 0.1,
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
            width: context.screenWidth * 0.1,
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
          SizedBox(
            width: context.screenWidth * 0.1,
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
            width: context.screenWidth * 0.1,
            child: CustomText(
              text: email,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: context.screenWidth * 0.1,
            child: CustomText(
              text: idnumber,
              color: ColorConstant.Beige,
              size: context.scaleFont(4),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          SizedBox(
            width: context.screenWidth * 0.1,
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
            width: context.screenWidth * 0.1,
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
        ],
      ),
    );
  }
}
