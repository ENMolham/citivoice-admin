import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/error/validate.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class CustomRowInputDialogEmployee extends StatelessWidget {
  final String text1;
  final String text2;
  final TextEditingController? controller1;
  final TextEditingController? controller2;

  const CustomRowInputDialogEmployee({
    super.key,
    required this.text1,
    required this.text2,
    this.controller1,
    this.controller2,
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
              CustomTextFormField(
                widthFiled: context.screenWidth * 0.2,
                heightFiled: context.screenHeight * 0.09,
                radius: 8,
                obscureText: false,
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
                paddingTop: context.screenHeight * 0.01,
                color: ColorConstant.LightGrey,
                textAlign: TextAlign.right,
                fontSize: context.scaleFont(1),
                paddingRight: 0,
                controller: controller1,
                validator: validateRequiredField,
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
                CustomTextFormField(
                  widthFiled: context.screenWidth * 0.2,
                  heightFiled: context.screenHeight * 0.09,
                  radius: 8,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  readOnly: false,
                  hintText: "",
                  paddingTop: context.screenHeight * 0.01,
                  color: ColorConstant.LightGrey,
                  textAlign: TextAlign.right,
                  fontSize: context.scaleFont(1),
                  paddingRight: 0,
                  controller: controller2,
                  validator: validateRequiredField,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
