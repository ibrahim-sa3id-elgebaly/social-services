import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:social_service/ui/about_us/about_us.dart';
import 'package:social_service/ui/contact_us/contact_us.dart';
import 'package:social_service/ui/service/service_screen.dart';
import 'package:social_service/ui/settings/settings_screen.dart';
import 'package:social_service/ui/splash_screens/first_screen.dart';
import 'core/providers/settings_provider.dart';
import 'core/style/app_style.dart';
import 'ui/home/home_screen.dart';
import 'ui/login/login_screen.dart';
import 'ui/register/register_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(ChangeNotifierProvider(
      create: (context)=>SettingsProvider(),
      child: const MyApp()));
  // 29.0.13113456
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 890),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Social Service',
          theme: AppStyle.lightTheme,
          initialRoute: LoginScreen.routeName,
          routes: {
            HomeScreen.routeName:(_)=>const HomeScreen(),
            LoginScreen.routeName:(_)=>const LoginScreen(),
            RegisterScreen.routeName:(_)=>const RegisterScreen(),
            ServiceScreen.routeName:(_)=>const ServiceScreen(),
            FirstScreen.routeName:(_)=>const FirstScreen(),
            SettingsScreen.routeName:(_)=>const SettingsScreen(),
            ContactUs.routeName:(_)=>const ContactUs(),
            AboutUs.routeName:(_)=>const AboutUs(),

          },
        );
      },
    );
  }
}
