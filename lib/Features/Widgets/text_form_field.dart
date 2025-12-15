import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final double widthFiled;
  final double? heightFiled;
  final double radius;
  final bool obscureText;
  final TextInputType keyboardType;
  final bool readOnly;
  final String hintText;
  final double paddingTop;
  final double paddingRight;
  final double paddingLeft;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color color;
  final TextAlign textAlign;
  final BoxBorder? border;
  final void Function(String)? onChanged;
  final int? maxLength;
  final double? fontSizeInput;
  final FontWeight? fontWeightInput;
  final Color? colorTextInput;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.widthFiled,
    required this.heightFiled,
    required this.radius,
    required this.obscureText,
    required this.keyboardType,
    required this.readOnly,
    required this.hintText,
    required this.paddingTop,
    required this.color,
    required this.textAlign,
    this.border,
    this.onChanged,
    this.maxLength,
    this.fontSizeInput,
    this.fontWeightInput,
    this.colorTextInput,
    this.paddingRight = 0.0,
    this.paddingLeft = 0.0,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop,
        right: paddingRight,
        left: paddingLeft,
      ),
      child: SizedBox(
        width: widthFiled,
        height: heightFiled,
        child: TextFormField(
          controller: controller,
          maxLength: maxLength,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          readOnly: readOnly,
          textAlign: textAlign,
          textAlignVertical: TextAlignVertical.center,
          onChanged: onChanged,
          style: TextStyle(
            fontWeight: fontWeightInput,
            fontSize: fontSizeInput,
            color: colorTextInput,
          ),

          decoration: InputDecoration(
            filled: true,
            fillColor: color,
            counterText: '',
            hintText: hintText,
            hintStyle: TextStyle(
              color: ColorConstant.MainColor,
              fontSize: context.scaleFont(18),
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.05,
              vertical: context.screenHeight * 0.02,
            ),

            enabledBorder: border == null
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius),
                    borderSide: BorderSide.none,
                  )
                : UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(radius),
                    borderSide: BorderSide(
                      color: border!.bottom.color,
                      width: border!.bottom.width,
                    ),
                  ),

            focusedBorder: border == null
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius),
                    borderSide: BorderSide(
                      color: ColorConstant.MainColor,
                      width: 1.3,
                    ),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: border!.bottom.color,
                      width: border!.bottom.width,
                    ),
                  ),

            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: ColorConstant.Red),
            ),

            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: ColorConstant.Red),
            ),

            errorStyle: TextStyle(fontSize: context.scaleFont(14), height: 0),
            helperStyle: const TextStyle(height: 0),
            helperText: '',
            errorMaxLines: 1,
          ),
        ),
      ),
    );
  }
}
