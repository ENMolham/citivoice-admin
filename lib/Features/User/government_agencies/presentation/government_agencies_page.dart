import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/button.dart';
import 'package:citivoice_admin/Features/Widgets/government_agencies/custom_details_row.dart';
import 'package:citivoice_admin/Features/Widgets/government_agencies/custom_dialog_agencies.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/trash/government_agencies_list.dart';
import 'package:flutter/material.dart';

class GovernmentAgenciesPage extends StatelessWidget {
  const GovernmentAgenciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.White,
      body: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: context.screenHeight * 0.02,
                right: context.screenWidth * 0.01,
                bottom: context.screenHeight * 0.02,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.business_outlined,
                    color: ColorConstant.MainColor,
                    size: context.scaleIcon(12),
                  ),
                  CustomText(
                    text: "الجهات الحكومية",
                    color: ColorConstant.MainColor,
                    size: context.scaleFont(8),
                    fontWeight: FontWeight.bold,
                    paddingTop: 0,
                    paddingright: context.screenWidth * 0.005,
                  ),
                  CustomButton(
                    widthButton: context.screenWidth * 0.12,
                    heightButton: context.screenHeight * 0.05,
                    colorButton: ColorConstant.MainColor,
                    colorText: ColorConstant.White,
                    text: "اضافة جهة حكومية",
                    sizeText: context.scaleFont(4),
                    paddingTop: 0,
                    paddingBottom: 0,
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) => const CustomDialogAgencies(),
                      );
                    },
                    radius: 8,
                    paddingleft: 0,
                    paddingRight: context.screenWidth * 0.53,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: context.screenWidth * 0.9,
              height: context.screenHeight * 0.9,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  vertical: context.screenHeight * 0.02,
                ),
                itemCount: governmentAgenciesList.length,
                itemBuilder: (context, index) {
                  final item = governmentAgenciesList[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: context.screenHeight * 0.02,
                      right: context.screenWidth * 0.01,
                      left: context.screenWidth * 0.013,
                    ),
                    child: IntrinsicHeight(
                      child: Container(
                        width: context.screenWidth * 0.85,
                        decoration: BoxDecoration(
                          color: ColorConstant.LightGrey,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.DarkGrey,
                              offset: const Offset(1, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: context.screenWidth * 0.664,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomDetailRow(
                                    text1: "اسم الجهة",
                                    text2: item['name']!,
                                  ),
                                  CustomDetailRow(
                                    text1: "نوع الجهة",
                                    text2: item['type']!,
                                  ),
                                  CustomDetailRow(
                                    text1: "محافظة",
                                    text2: item['governorate']!,
                                  ),
                                  CustomDetailRow(
                                    text1: "الموقع",
                                    text2: item['location']!,
                                  ),
                                  CustomText(
                                    text: "وصف",
                                    color: ColorConstant.MainColor,
                                    fontWeight: FontWeight.bold,
                                    size: context.scaleFont(4),
                                    paddingTop: context.screenHeight * 0.015,
                                    paddingLeft: context.screenWidth * 0.01,
                                    paddingright: context.screenWidth * 0.01,
                                  ),
                                  CustomText(
                                    text: item['description']!,
                                    color: ColorConstant.DarkGrey,
                                    fontWeight: FontWeight.bold,
                                    size: context.scaleFont(4),
                                    paddingTop: context.screenHeight * 0.01,
                                    paddingLeft: context.screenWidth * 0.01,
                                    paddingright: context.screenWidth * 0.015,
                                  ),
                                  SizedBox(height: context.screenHeight * 0.02),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Container(
                                width: context.screenHeight * 0.35,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Image.network(
                                  item['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
