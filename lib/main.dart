import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/style/app_style.dart';
import 'ui/home/home_screen.dart';
import 'ui/login/login_screen.dart';
import 'ui/register/register_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
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
          },
        );
      },
    );
  }
}
