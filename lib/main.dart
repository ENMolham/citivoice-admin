import 'dart:io';

import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/utils/shared_preference_utils.dart';
import 'package:citivoice_admin/Features/Auth/login/cubit/login_cubit.dart';
import 'package:citivoice_admin/Features/Auth/login/presentation/login_page.dart';
import 'package:citivoice_admin/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

// Future<void> _backgroundHandler(RemoteMessage message) async {
//   print('Received message in background: ${message.data}');
//   if (message.notification != null) {
//     print('Notification Title: ${message.notification!.title}');
//     print('Notification Body: ${message.notification!.body}');
//   }
// }

// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// Future<void> _foregroundHandler(RemoteMessage message) async {
//   print(
//     '======================================================================================================',
//   );
//   print('Received message in foreground: ${message.data}');
//   print(
//     '======================================================================================================',
//   );
//   if (message.notification != null) {
//     final title = message.notification!.title ?? '';
//     final body = message.notification!.body ?? '';
//     final newNotification = NotificationModel(
//       id: DateTime.now().millisecondsSinceEpoch.toString(),
//       title: title,
//       body: body,
//       date: DateTime.now(),
//     );
//     final context = navigatorKey.currentContext;
//     if (context != null) {
//       context.read<NotificationsCubit>().addNotification(newNotification);
//     }
//     await NotificationViewer.display(message);
//   }
// }

// Future<void> requestPermission() async {
//   NotificationSettings settings = await FirebaseMessaging.instance
//       .requestPermission(
//         alert: true,
//         badge: true,
//         sound: true,
//         provisional: false,
//       );

//   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//     print('User granted permission.');
//   } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//     print('User granted provisional permission.');
//   } else {
//     print('User denied or has not accepted permission.');
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesUtils().init();
  await configureDependencies();
  HttpOverrides.global = MyHttpOverrides();
  // await Firebase.initializeApp();
  // await requestPermission();
  // await NotificationViewer.initialize();
  // FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
  //   // await _foregroundHandler(message);
  // });
  // FirebaseMessaging.onMessageOpenedApp.listen(_foregroundHandler);
  // bool loggedIn = SharedPreferencesUtils().isLoggedIn();
  // String? userName = await SharedPreferencesUtils().getUsername();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<LoginCubit>())],
      child: MaterialApp(
        // navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
        theme: ThemeData(
          fontFamily: 'Cairo',
          primaryColor: ColorConstant.MainColor,
          colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.MainColor),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: ColorConstant.MainColor,
          ),
        ),
        home: LoginPage(),
      ),
    );
  }
}
