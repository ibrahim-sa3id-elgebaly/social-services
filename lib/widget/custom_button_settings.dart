import 'package:flutter/material.dart';
import 'package:social_service/core/style/app_colors.dart';

class CustomButtonSettings extends StatelessWidget {
  String iconName;
  IconData icon;
  Function()? onTap;

  CustomButtonSettings({
    super.key,
    required this.onTap,
    required this.iconName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            SizedBox(width: 18),
            Icon(
              icon,
              size: 28,
              color: AppColors.secondaryLightColor,
            ),
            SizedBox(width: 20),
            Text(iconName, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
