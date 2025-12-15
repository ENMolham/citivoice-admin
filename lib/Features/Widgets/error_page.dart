import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  final String error;
  const ErrorPage({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight,
      color: ColorConstant.MainColor,
      child: Padding(
        padding: EdgeInsets.only(bottom: context.screenHeight * 0.35),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Lottie.asset(
              'assets/images/FCzQkUZKBf.json',
              width: context.screenWidth * 0.8,
              height: context.screenHeight * 0.4,
              fit: BoxFit.fill,
              animate: true,
            ),
            CustomText(
              text: error,
              color: ColorConstant.White,
              size: context.scaleFont(20),
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              paddingright: 0,
            ),
          ],
        ),
      ),
    );
  }
}
