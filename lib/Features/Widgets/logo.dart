import 'package:citivoice_admin/Core/constant/image_constant.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final double widthLogo;
  final double heightLogo;
  final ColorFilter? colorFilter;
  final double paddingTop;
  final double paddingRight;
  const CustomLogo({
    super.key,
    required this.widthLogo,
    required this.heightLogo,
    this.colorFilter,
    required this.paddingTop,
    required this.paddingRight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, right: paddingRight),
      child: Container(
        width: widthLogo,
        height: heightLogo,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.logo),
            fit: BoxFit.fill,
            colorFilter: colorFilter,
          ),
        ),
      ),
    );
  }
}
