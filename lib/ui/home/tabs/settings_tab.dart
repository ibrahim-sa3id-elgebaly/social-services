import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_service/ui/about_us/about_us.dart';
import 'package:social_service/ui/contact_us/contact_us.dart';
import 'package:social_service/ui/settings/settings_screen.dart';
import '../../../widget/custom_button_settings.dart';
import '../../../widget/profile_header.dart';
import '../../login/login_screen.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          ProfileHeader(),
          SizedBox(height: 28.h),
          Divider(),
          SizedBox(height: 18.h),
          CustomButtonSettings(
            icon: Icons.settings,
            iconName: "Settings",
            onTap: (){
            Navigator.pushNamed(context, SettingsScreen.routeName);
          },),
          SizedBox(height: 28.h),
          CustomButtonSettings(
            icon: Icons.mark_email_unread_sharp,
            iconName: "Contact Us",
            onTap: (){
              Navigator.pushNamed(context, ContactUs.routeName);
            },),
          SizedBox(height: 28.h),
          CustomButtonSettings(
            icon: Icons.info_outline_rounded,
            iconName: "About Us",
            onTap: (){
              Navigator.pushNamed(context, AboutUs.routeName);
            },),
          Spacer(),
          CustomButtonSettings(
            icon: Icons.logout,
            iconName: "Log Out",
            onTap: (){
            Navigator.pushNamed(context, LoginScreen.routeName);
          },),
          SizedBox(height: 28.h),
        ],
      ),
    );
  }



}


