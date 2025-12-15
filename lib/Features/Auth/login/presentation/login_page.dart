// ignore_for_file: use_build_context_synchronously
import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/error/validate.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Auth/login/cubit/login_password_visibility_cubit.dart';
import 'package:citivoice_admin/Features/Widgets/button.dart';
import 'package:citivoice_admin/Features/Widgets/logo.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:citivoice_admin/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> keylogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Future<String?> fetchDeviceToken() async {
    //   String? token = await FirebaseMessaging.instance.getToken();
    //   return token;
    // }

    return Scaffold(
      body:
          //  BlocConsumer<LoginCubit, LoginState>(
          //   listener: (context, state) {
          //     state.whenOrNull(
          //       error: (NetworkExceptions networkExceptions) =>
          //           Fluttertoast.showToast(
          //             msg: NetworkExceptions.getErrorMessage(networkExceptions),
          //             toastLength: Toast.LENGTH_LONG,
          //             gravity: ToastGravity.BOTTOM,
          //             backgroundColor: Colors.red,
          //           ),
          //       success: (LoginEntity loginEntity) {
          //         Navigator.of(context).pushReplacement(
          //           MaterialPageRoute(
          //             builder: (context) =>
          //                 Home(userName: loginEntity.data!.user.name),
          //           ),
          //         );
          //         Fluttertoast.showToast(
          //           msg: loginEntity.message,
          //           toastLength: Toast.LENGTH_LONG,
          //           gravity: ToastGravity.BOTTOM,
          //           backgroundColor: Colors.green,
          //         );
          //       },
          //     );
          //   },
          //   builder: (context, state) {
          //     return state.maybeWhen(
          //       loading: () => SizedBox(
          //         width: context.screenWidth,
          //         height: context.screenHeight,
          //         child: const LoadingScreen(),
          //       ),
          //       orElse: () {
          //         return
          Form(
            key: keylogin,
            child: Container(
              width: context.screenWidth,
              height: context.screenHeight,
              color: ColorConstant.MainColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomLogo(
                      widthLogo: context.screenWidth,
                      heightLogo: context.screenHeight * 0.27,
                      paddingTop: context.screenHeight * 0.02,
                      paddingRight: 0,
                    ),
                    CustomText(
                      text: "تسجيل الدخول",
                      color: ColorConstant.White,
                      size: ScreenSizeExtension(context).scaleFont(32),
                      fontWeight: FontWeight.bold,
                      paddingTop: context.screenHeight * 0.025,
                      paddingright: 0,
                    ),
                    CustomText(
                      text: "مرحبا بعودتك",
                      color: ColorConstant.White,
                      size: context.scaleFont(20),
                      fontWeight: FontWeight.bold,
                      paddingTop: context.screenHeight * 0.0041,
                      paddingright: 0,
                    ),
                    CustomTextFormField(
                      widthFiled: context.screenWidth * 0.8636,
                      heightFiled: context.screenHeight * 0.1,
                      radius: 10,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      readOnly: false,
                      hintText: "البريد الالكتروني",
                      paddingTop: context.screenHeight * 0.06,
                      color: ColorConstant.White,
                      textAlign: TextAlign.right,
                      controller: emailController,
                      validator: validateRequiredField,
                    ),
                    BlocBuilder<LoginPasswordVisibilityCubit, bool>(
                      builder: (context, passwordVisible) {
                        return CustomTextFormField(
                          widthFiled: context.screenWidth * 0.8636,
                          heightFiled: context.screenHeight * 0.1,
                          radius: 10,
                          obscureText: passwordVisible,
                          keyboardType: TextInputType.visiblePassword,
                          readOnly: false,
                          hintText: "كلمة المرور",
                          paddingTop: context.screenHeight * 0.0025,
                          controller: passwordController,
                          validator: validateRequiredField,
                          color: ColorConstant.White,
                          textAlign: TextAlign.right,
                          suffixIcon: IconButton(
                            onPressed: () {
                              context
                                  .read<LoginPasswordVisibilityCubit>()
                                  .toggle();
                            },
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: ColorConstant.MainColor,
                              size: context.scaleIcon(28),
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Forgetpassword(),
                        //   ),
                        // );
                      },
                      child: CustomText(
                        text: "نسيت كلمة المرور",
                        color: ColorConstant.Beige,
                        size: context.scaleFont(16),
                        fontWeight: FontWeight.bold,
                        paddingTop: 0,
                        paddingright: context.screenWidth * 0.5,
                      ),
                    ),
                    CustomButton(
                      widthButton: context.screenWidth * 0.4545,
                      heightButton: context.screenHeight * 0.0606,
                      colorButton: ColorConstant.Beige,
                      colorText: ColorConstant.MainColor,
                      text: "تسجيل الدخول",
                      sizeText: context.scaleFont(20),
                      paddingTop: context.screenHeight * 0.0669,
                      onTap: () async {
                        // final deviceToken =
                        //     await fetchDeviceToken() ?? 'unknown';
                        // if (keylogin.currentState!.validate()) {
                        //   context.read<LoginCubit>().emitLogin(
                        //     phoneController.text,
                        //     passwordController.text,
                        //     deviceToken,
                        //   );
                        // }
                        if (keylogin.currentState!.validate()) {
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(builder: (context) => Home()),
                          // );
                        }
                      },
                      radius: 50,
                      paddingRight: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "ليس لديك حساب ؟",
                          color: ColorConstant.White,
                          size: context.scaleFont(16),
                          fontWeight: FontWeight.bold,
                          paddingTop: context.screenHeight * 0.12,
                          paddingBottum: context.screenHeight * 0.01,
                          paddingright: 0,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.pushAndRemoveUntil(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => SignUp()),
                            //   (Route<dynamic> route) => false,
                            // );
                          },
                          child: CustomText(
                            text: "إنشاء حساب",
                            color: ColorConstant.Beige,
                            size: context.scaleFont(16),
                            fontWeight: FontWeight.bold,
                            paddingTop: context.screenHeight * 0.12,
                            paddingright: context.screenWidth * 0.02,
                            paddingBottum: context.screenHeight * 0.01,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      //       },
      //     );
      //   },
      // ),
    );
  }
}
