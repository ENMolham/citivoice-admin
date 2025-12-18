import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRowHeaderCitizens extends StatelessWidget {
  final String image;
  final String first_name;
  final String mobiel;
  final String idnumber;
  final String email;
  final String father;
  final String last_name;
  final String status;
  const CustomRowHeaderCitizens({
    super.key,
    required this.image,
    required this.father,
    required this.mobiel,
    required this.first_name,
    required this.last_name,
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
              text: first_name,
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
              text: father,
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
              text: last_name,
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
