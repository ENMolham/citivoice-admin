import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/citizens/custom_row_citizens.dart';
import 'package:citivoice_admin/Features/Widgets/citizens/custom_row_header_citizens.dart';
import 'package:citivoice_admin/Features/Widgets/dialog.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/trash/citizenlist.dart';
import 'package:flutter/material.dart';

class CitizensPage extends StatelessWidget {
  const CitizensPage({super.key});

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
                    Icons.person,
                    color: ColorConstant.MainColor,
                    size: context.scaleIcon(12),
                  ),
                  CustomText(
                    text: "المواطنين",
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
                top: context.screenWidth * 0.02,
                right: context.screenWidth * 0.01,
              ),
              child: Container(
                height: context.screenHeight * 0.85,
                width: context.screenWidth * 0.83,
                decoration: BoxDecoration(
                  color: ColorConstant.LightGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRowHeaderCitizens(
                      image: "صورة المواطن",
                      first_name: "الاسم الأول",
                      father: "اسم الأب",
                      last_name: "اسم العائلة",
                      idnumber: "الرقم الوطني",
                      mobiel: "رقم الموبايل",
                      email: "البريد الالكتروني",
                      status: "الحالة",
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.775,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: citizensList.length,
                        itemBuilder: (context, index) {
                          final item = citizensList[index];
                          return CustomRowCitizens(
                            image: item['image']!,
                            first_name: item['first_name']!,
                            father: item['father']!,
                            last_name: item['last_name']!,
                            mobiel: item['mobiel']!,
                            email: item['email']!,
                            idnumber: item['idnumber']!,
                            status: item['status']!,
                            icon: item['status'] == "فعال"
                                ? Icons.cancel
                                : Icons.check,
                            coloricon: item['status'] == "فعال"
                                ? ColorConstant.Red
                                : ColorConstant.green,
                            colorstatus: item['status'] == "فعال"
                                ? ColorConstant.green
                                : ColorConstant.Red,
                            onPressedicon: item['status'] == "فعال"
                                ? () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => CustomDialog(
                                        title: "ايقاف حساب مواطن",
                                        message:
                                            "هل انت متأكد من ايقاف حساب المواطن ؟",
                                        textbutton1: "تأكيد",
                                        textbutton2: "رجوع",
                                        onPressed1: () {
                                          // context
                                          //     .read<LogoutCubit>()
                                          //     .emitlogout();
                                        },
                                        onPressed2: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    );
                                  }
                                : () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => CustomDialog(
                                        title: "تفعيل حساب مواطن",
                                        message:
                                            "هل انت متأكد من تفعيل حساب المواطن ؟",
                                        textbutton1: "تأكيد",
                                        textbutton2: "رجوع",
                                        onPressed1: () {
                                          // context
                                          //     .read<LogoutCubit>()
                                          //     .emitlogout();
                                        },
                                        onPressed2: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    );
                                  },
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
