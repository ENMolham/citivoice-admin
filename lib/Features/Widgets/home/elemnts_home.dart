import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class ElemntsHome extends StatelessWidget {
  final int value;
  final int index;
  final String text;
  final void Function() onTap;
  final IconData icon;
  const ElemntsHome({
    super.key,
    required this.value,
    required this.index,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.screenWidth * 0.1,
        height: context.screenHeight * 0.08,
        decoration: BoxDecoration(
          border: index == value
              ? BoxBorder.fromSTEB(
                  bottom: BorderSide(color: ColorConstant.Beige, width: 1),
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: context.scaleIcon(6),
              color: index == value ? ColorConstant.Beige : ColorConstant.White,
            ),
            CustomText(
              text: text,
              color: index == value ? ColorConstant.Beige : ColorConstant.White,
              size: context.scaleFont(4),
              fontWeight: FontWeight.normal,
              paddingTop: 0,
              paddingright: context.screenWidth * 0.005,
            ),
          ],
        ),
      ),
    );
  }
}
