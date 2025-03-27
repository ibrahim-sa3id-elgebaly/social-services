import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_service/ui/login/login_screen.dart';
import 'package:social_service/widget/skip_button.dart';
import '../../widget/custom_button.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = "first_screen";
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 55.h),
            SkipButton(onPressed: Skip),
            SizedBox(height: 30.h),
            SizedBox(
              width: 364.w,
              height: 400.h,
              child: Image.asset('assets/images/splash_1.png'),
            ),
            SizedBox(height: 30.h),
            CustomButton(label: "Next", onClick: next),
          ],
        ),
      ),
    );
  }
  next(){
    Navigator.pushNamed(context, LoginScreen.routeName);
  }
  Skip(){
    Navigator.pushNamed(context, LoginScreen.routeName);
  }
}
