import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/button.dart';
import 'package:citivoice_admin/Features/Widgets/custom_file_upload.dart';
import 'package:citivoice_admin/Features/Widgets/employees/custom_row_input_dialog_employee.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomDialogEmployee extends StatelessWidget {
  const CustomDialogEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          width: context.screenWidth * 0.6,
          height: context.screenHeight * 0.9,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.cancel,
                      color: ColorConstant.MainColor,
                      size: context.scaleIcon(6),
                    ),
                  ),
                ),
                CustomText(
                  text: "اضافة موظف",
                  color: ColorConstant.Beige,
                  size: context.scaleFont(4),
                  fontWeight: FontWeight.bold,
                  paddingTop: 0,
                  paddingright: context.screenWidth * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: context.screenHeight * 0.01,
                    right: context.screenWidth * 0.01,
                    bottom: context.screenHeight * 0.03,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: context.screenWidth * 0.2,
                        height: context.screenHeight * 0.002,
                        color: ColorConstant.MainColor,
                      ),
                      Container(
                        width: context.screenWidth * 0.06,
                        height: context.screenHeight * 0.002,
                        color: ColorConstant.Beige,
                      ),
                    ],
                  ),
                ),
                CustomRowInputDialogEmployee(
                  text1: "الاسم الكامل",
                  text2: "الرقم الوطني",
                ),
                CustomRowInputDialogEmployee(
                  text1: "البريد الالكتروني",
                  text2: "رقم الموبايل",
                ),
                CustomRowInputDialogEmployee(
                  text1: "تاريخ التوظيف",
                  text2: "الجهة الحكومية",
                ),
                CustomFileUpload(text: "صورة الموظف"),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomButton(
                    widthButton: context.screenWidth * 0.1,
                    heightButton: context.screenHeight * 0.05,
                    colorButton: ColorConstant.MainColor,
                    colorText: ColorConstant.White,
                    text: "إضافة",
                    sizeText: context.scaleFont(4),
                    paddingTop: context.screenHeight * 0.1,
                    onTap: () {},
                    radius: 8,
                    paddingleft: context.screenWidth * 0.01,
                    paddingRight: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
