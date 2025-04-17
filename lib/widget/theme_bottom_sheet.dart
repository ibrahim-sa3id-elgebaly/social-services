import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_service/widget/selected_item.dart';
import 'package:social_service/widget/unselected_item.dart';
import '../core/providers/settings_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(settingsProvider.themeMode == ThemeMode.dark
              ? "Dark"
              : "Light"),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(
                    settingsProvider.themeMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark);
              },
              child: UnSelectedItem(settingsProvider.themeMode == ThemeMode.dark
                  ? "Light"
                  : "Dark"))
        ],
      ),
    );
  }
}
