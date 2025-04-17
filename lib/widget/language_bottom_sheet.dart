import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:social_service/widget/selected_item.dart';
import 'package:social_service/widget/unselected_item.dart';
import '../core/providers/settings_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: REdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(
              settingsProvider.language == "ar" ? "العربيه" : "English"),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage(
                    settingsProvider.language == "ar" ? "en" : "ar");
              },
              child: UnSelectedItem(
                  settingsProvider.language == "ar" ? "English" : "العربيه"))
        ],
      ),
    );
  }
}
