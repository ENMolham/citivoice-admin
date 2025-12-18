import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/complaints/custom_dialog_complaints.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_row.dart';
import 'package:citivoice_admin/Features/Widgets/home/custom_row_header.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/trash/complaintsList.dart';
import 'package:flutter/material.dart';

class ComplaintsPage extends StatelessWidget {
  const ComplaintsPage({super.key});

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
                bottom: 0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.file_copy,
                    color: ColorConstant.MainColor,
                    size: context.scaleIcon(12),
                  ),
                  CustomText(
                    text: "الشكاوي",
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
              child: Container(
                height: context.screenHeight * 0.9,
                width: context.screenWidth * 0.7,
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
                      width: context.screenWidth * 0.1,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.8,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: complaintsList.length,
                        itemBuilder: (context, index) {
                          final item = complaintsList[index];
                          return InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => CustomDialogComplaints(),
                                barrierDismissible: false,
                              );
                            },
                            child: CustomRow(
                              number: item['number'].toString(),
                              image: item['image'].toString(),
                              fullname: item['fullname'].toString(),
                              mobiel: item['mobiel'].toString(),
                              entity: item['entity'].toString(),
                              date: item['date'].toString(),
                              status: item['status'].toString(),
                              width: context.screenWidth * 0.1,
                              paddingimage: context.screenWidth * 0.04,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
