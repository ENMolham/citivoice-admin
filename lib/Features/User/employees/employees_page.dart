import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/button.dart';
import 'package:citivoice_admin/Features/Widgets/dialog.dart';
import 'package:citivoice_admin/Features/Widgets/employees/custom_dialog_employee.dart';
import 'package:citivoice_admin/Features/Widgets/employees/custom_row_employee.dart';
import 'package:citivoice_admin/Features/Widgets/employees/custom_row_header_employee.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/trash/employees_list.dart';
import 'package:flutter/material.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

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
                    text: "الموظفين",
                    color: ColorConstant.MainColor,
                    size: context.scaleFont(8),
                    fontWeight: FontWeight.bold,
                    paddingTop: 0,
                    paddingright: context.screenWidth * 0.005,
                  ),
                  CustomButton(
                    widthButton: context.screenWidth * 0.1,
                    heightButton: context.screenHeight * 0.05,
                    colorButton: ColorConstant.MainColor,
                    colorText: ColorConstant.White,
                    text: "اضافة موظف",
                    sizeText: context.scaleFont(4),
                    paddingTop: 0,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => CustomDialogEmployee(),
                        barrierDismissible: false,
                      );
                    },
                    radius: 8,
                    paddingleft: 0,
                    paddingRight: context.screenWidth * 0.615,
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
                    CustomRowHeaderEmployee(
                      image: "صورة الموظف",
                      fullname: "الاسم الكامل",
                      mobiel: "الموبايل",
                      entity: "الجهة الحكومية",
                      date: "تاريخ التوظيف",
                      status: "الحالة",
                      idnumber: 'الرقم الوطني',
                      email: 'الايميل',
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.775,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: employeesList.length,
                        itemBuilder: (context, index) {
                          final item = employeesList[index];
                          return CustomRowEmployee(
                            image: item['image']!,
                            fullname: item['fullname']!,
                            mobiel: item['mobiel']!,
                            email: item['email']!,
                            idnumber: item['idnumber']!,
                            entity: item['entity']!,
                            date: item['date']!,
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
                                        title: "ايقاف حساب موظف",
                                        message:
                                            "هل انت متأكد من ايقاف حساب الموظف ؟",
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
                                        title: "تفعيل حساب موظف",
                                        message:
                                            "هل انت متأكد من تفعيل حساب الموظف ؟",
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
