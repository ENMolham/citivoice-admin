import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/constant/image_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight,
      color: ColorConstant.MainColor,
      child: Center(
        child: Lottie.asset(
          ImageConstant.logo,
          width: context.screenWidth * 0.8,
          height: context.screenHeight * 0.4,
          fit: BoxFit.fill,
          animate: true,
        ),
      ),
    );
  }
}
