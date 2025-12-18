import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRowEmployee extends StatelessWidget {
  final String image;
  final String fullname;
  final String mobiel;
  final String idnumber;
  final String email;
  final String entity;
  final String date;
  final String status;
  final IconData icon;
  final Color coloricon;
  final Color colorstatus;
  final void Function()? onPressedicon;
  const CustomRowEmployee({
    super.key,
    required this.image,
    required this.fullname,
    required this.mobiel,
    required this.entity,
    required this.date,
    required this.status,
    required this.idnumber,
    required this.email,
    required this.icon,
    required this.coloricon,
    this.onPressedicon,
    required this.colorstatus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.screenHeight * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.04,
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
            width: context.screenWidth * 0.1,
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
            width: context.screenWidth * 0.1,
            child: CustomText(
              text: date,
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: ColorConstant.MainColor,
              size: context.scaleFont(3),
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
              color: colorstatus,
              size: context.scaleFont(3),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              textAlign: TextAlign.center,
              paddingright: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth * 0.0005),
            child: IconButton(
              onPressed: onPressedicon,
              icon: Icon(icon, size: context.scaleIcon(6), color: coloricon),
            ),
          ),
        ],
      ),
    );
  }
}
