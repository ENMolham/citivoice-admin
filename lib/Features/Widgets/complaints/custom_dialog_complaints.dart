import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/complaints/custom_row_details_dialog_complaints.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomDialogComplaints extends StatelessWidget {
  const CustomDialogComplaints({super.key});

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
                  text: "تفاصيل الشكوى",
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
                        width: context.screenWidth * 0.07,
                        height: context.screenHeight * 0.002,
                        color: ColorConstant.Beige,
                      ),
                    ],
                  ),
                ),
                CustomRowDetailsDialogComplaints(
                  text1: "رقم الشكوى",
                  text2: "عنوان الشكوى",
                  value1: "12134",
                  value2: "تأخر في تسليم معاملة",
                ),
                CustomRowDetailsDialogComplaints(
                  text1: "الاسم الكامل",
                  text2: "رقم الموبايل",
                  value1: "محمد ملهم الزقيمي",
                  value2: "0192931239123",
                ),
                CustomRowDetailsDialogComplaints(
                  text1: "تاريخ التقديم",
                  text2: "الجهة الحكومية",
                  value1: "محمد ملهم الزقيمي",
                  value2: "0192931239123",
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: context.screenHeight * 0.01,
                    right: context.screenWidth * 0.01,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "الحالة",
                        color: ColorConstant.Black,
                        size: context.scaleFont(4),
                        fontWeight: FontWeight.w400,
                        paddingTop: 0,
                        paddingright: 0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: context.screenHeight * 0.01,
                        ),
                        child: Container(
                          width: context.screenWidth * 0.2,
                          height: context.screenHeight * 0.05,
                          decoration: BoxDecoration(
                            color: ColorConstant.LightGrey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: CustomText(
                            text: "قيد الدراسة",
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
                Padding(
                  padding: EdgeInsets.only(
                    top: context.screenHeight * 0.01,
                    right: context.screenWidth * 0.01,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "وصف الشكوى",
                        color: ColorConstant.Black,
                        size: context.scaleFont(4),
                        fontWeight: FontWeight.w400,
                        paddingTop: 0,
                        paddingright: 0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: context.screenHeight * 0.01,
                        ),
                        child: Container(
                          width: context.screenWidth * 0.25,
                          decoration: BoxDecoration(
                            color: ColorConstant.LightGrey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: CustomText(
                            text:
                                "لقد قدمت الشكوى منذ شهر تقريبا وحتى الان لم اسلمةسي يس سسيترسيساسر سيرستييرسيرةرس يهسيررس يلا سيعسىي سي ؤلاسيؤت سيسؤةسيؤ س يؤلايؤىيةوؤلايغؤ سيؤلاسيسؤلاةيؤ",
                            color: ColorConstant.MainColor,
                            size: context.scaleFont(4),
                            fontWeight: FontWeight.bold,
                            paddingTop: context.screenHeight * 0.01,
                            paddingright: context.screenWidth * 0.01,
                            textAlign: TextAlign.right,
                            paddingBottum: context.screenHeight * 0.01,
                            paddingLeft: context.screenWidth * 0.01,
                          ),
                        ),
                      ),
                    ],
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
