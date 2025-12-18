import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_complaints_chart.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_complaints_pie_chart.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_report.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_row.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_row_header.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/trash/complaintsList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.White,
      body: Align(
        alignment: Alignment.topRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: context.screenHeight * 0.02,
                right: context.screenWidth * 0.01,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.dashboard,
                    color: ColorConstant.MainColor,
                    size: context.scaleIcon(12),
                  ),
                  CustomText(
                    text: "لوحة التحكم",
                    color: ColorConstant.MainColor,
                    size: context.scaleFont(8),
                    fontWeight: FontWeight.bold,
                    paddingTop: 0,
                    paddingright: context.screenWidth * 0.005,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.screenHeight * 0.02,
                right: context.screenWidth * 0.01,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: context.screenHeight * 0.4,
                    width: context.screenWidth * 0.6,
                    decoration: BoxDecoration(
                      color: ColorConstant.LightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomReport(
                              titel: "عدد الشكاوي الكلي",
                              value: "44",
                              paddingLeft: context.screenWidth * 0.033,
                              icon: Icons.file_copy,
                            ),
                            CustomReport(
                              titel: "عدد الشكاوي المنجزة",
                              value: "22",
                              paddingLeft: context.screenWidth * 0.025,
                              icon: Icons.check,
                            ),
                            CustomReport(
                              titel: "عدد الشكاوي المرفوضة",
                              value: "44",
                              paddingLeft: context.screenWidth * 0.015,
                              icon: Icons.cancel,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: context.screenWidth * 0.015,
                          ),
                          child: CustomReport(
                            titel: "عدد الشكاوي المنتظرة",
                            value: "44",
                            paddingLeft: context.screenWidth * 0.02,
                            icon: Icons.cached,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: context.screenWidth * 0.01),
                    child: Container(
                      height: context.screenHeight * 0.4,
                      width: context.screenWidth * 0.22,
                      decoration: BoxDecoration(
                        color: ColorConstant.LightGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CustomComplaintsPieChart(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.screenHeight * 0.02,
                right: context.screenWidth * 0.01,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: context.screenHeight * 0.45,
                    width: context.screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: ColorConstant.LightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRowHeader(
                          number: "رقم المعاملة",
                          image: "صورة المستخدم",
                          fullname: "الاسم الكامل",
                          mobiel: "الموبايل",
                          entity: "الجهة",
                          date: "تاريخ التقديم",
                          status: "الحالة",
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.38,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: complaintsList.length,
                            itemBuilder: (context, index) {
                              final item = complaintsList[index];
                              return CustomRow(
                                number: item['number'].toString(),
                                image: item['image'].toString(),
                                fullname: item['fullname'].toString(),
                                mobiel: item['mobiel'].toString(),
                                entity: item['entity'].toString(),
                                date: item['date'].toString(),
                                status: item['status'].toString(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: context.screenWidth * 0.01),
                    child: Container(
                      height: context.screenHeight * 0.45,
                      width: context.screenWidth * 0.32,
                      decoration: BoxDecoration(
                        color: ColorConstant.LightGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const ComplaintsChart(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
