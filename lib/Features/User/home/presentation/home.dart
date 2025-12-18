import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/User/citizens/citizens_page.dart';
import 'package:citivoice_admin/Features/User/complaints/presentation/complaints_page.dart';
import 'package:citivoice_admin/Features/User/employees/employees_page.dart';
import 'package:citivoice_admin/Features/User/government_agencies/presentation/government_agencies_page.dart';
import 'package:citivoice_admin/Features/User/home_page/presentation/home_page.dart';
import 'package:citivoice_admin/Features/Widgets/dialog.dart';
import 'package:citivoice_admin/Features/Widgets/home/elemnts_home.dart';
import 'package:citivoice_admin/Features/Widgets/logo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  List screens = [];

  @override
  void initState() {
    super.initState();
    screens = [
      HomePage(),
      GovernmentAgenciesPage(),
      ComplaintsPage(),
      EmployeesPage(),
      CitizensPage(),
    ];
  }

  void changePage(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.MainColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: context.screenHeight,
            width: context.screenWidth * 0.15,
            decoration: BoxDecoration(
              color: ColorConstant.MainColor,
              border: BoxBorder.fromSTEB(
                bottom: BorderSide(color: ColorConstant.LightGrey),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomLogo(
                  widthLogo: context.screenWidth * 0.15,
                  heightLogo: context.screenHeight * 0.18,
                  paddingTop: context.screenHeight * 0.02,
                  paddingRight: 0,
                ),
                ElemntsHome(
                  icon: Icons.home_filled,
                  value: 0,
                  index: _index,
                  onTap: () => changePage(0),
                  text: "الصفحة الرئيسية",
                ),
                ElemntsHome(
                  icon: Icons.business_outlined,
                  value: 1,
                  index: _index,
                  onTap: () => changePage(1),
                  text: "الجهات الحكومية",
                ),
                ElemntsHome(
                  icon: Icons.file_copy,
                  value: 2,
                  index: _index,
                  onTap: () => changePage(2),
                  text: "الشكاوي",
                ),
                ElemntsHome(
                  icon: Icons.person,
                  value: 3,
                  index: _index,
                  onTap: () => changePage(3),
                  text: "الموظفيين",
                ),
                ElemntsHome(
                  icon: Icons.person,
                  value: 4,
                  index: _index,
                  onTap: () => changePage(4),
                  text: "المواطنين",
                ),
                ElemntsHome(
                  icon: Icons.logout,
                  value: 5,
                  index: _index,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                        title: "تسجيل الخروج",
                        message: 'هل أنت متأكد من أنك تريد تسجيل الخروج',
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
                  text: "تسجيل الخروج",
                ),
              ],
            ),
          ),
          Expanded(child: screens[_index]),
        ],
      ),
    );
  }
}
