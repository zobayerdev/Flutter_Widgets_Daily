// ignore_for_file: deprecated_member_use
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutters_widgets_daily/features/api_file/screen/login_screen.dart';
import 'package:flutters_widgets_daily/features/tabbar_screen/tabbar_one.dart';
import 'package:flutters_widgets_daily/helper/all_routes.dart';
import 'package:flutters_widgets_daily/helper/di.dart';
import 'package:flutters_widgets_daily/helper/helpers_method.dart';
import 'package:flutters_widgets_daily/helper/navigation_service.dart';
import 'package:flutters_widgets_daily/helper/register_provider.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  diSetup();
  //initiInternetChecker();
  //DioSingleton.instance.create();
  //await Firebase.initializeApp();
  //FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  //LocalNotificationService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const UtillScreenMobile();
            },
          ),
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  static const Color c4EC5D7 = Color(0xFF4EC5D7); // Base color

  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            showPerformanceOverlay: false,
            debugShowCheckedModeBanner: false,

            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            home: const LoginScreen(), //Loading //splashscreen
          ),
        );
      },
    );
  }
}
