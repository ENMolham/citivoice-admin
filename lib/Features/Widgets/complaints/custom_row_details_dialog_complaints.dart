import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRowDetailsDialogComplaints extends StatelessWidget {
  final String text1;
  final String text2;
  final String value1;
  final String value2;

  const CustomRowDetailsDialogComplaints({
    super.key,
    required this.text1,
    required this.text2,
    required this.value1,
    required this.value2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.screenHeight * 0.01,
        right: context.screenWidth * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: text1,
                color: ColorConstant.Black,
                size: context.scaleFont(4),
                fontWeight: FontWeight.w400,
                paddingTop: 0,
                paddingright: 0,
              ),
              Padding(
                padding: EdgeInsets.only(top: context.screenHeight * 0.01),
                child: Container(
                  width: context.screenWidth * 0.2,
                  height: context.screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color: ColorConstant.LightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: CustomText(
                    text: value1,
                    color: ColorConstant.MainColor,
                    size: context.scaleFont(4),
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.01,
                    paddingright: context.screenWidth * 0.01,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: context.screenWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: text2,
                  color: ColorConstant.Black,
                  size: context.scaleFont(4),
                  fontWeight: FontWeight.w400,
                  paddingTop: 0,
                  paddingright: 0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.screenHeight * 0.01),
                  child: Container(
                    width: context.screenWidth * 0.2,
                    height: context.screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: ColorConstant.LightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CustomText(
                      text: value2,
                      color: ColorConstant.MainColor,
                      size: context.scaleFont(4),
                      fontWeight: FontWeight.bold,
                      paddingTop: context.screenHeight * 0.01,
                      paddingright: context.screenWidth * 0.01,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
