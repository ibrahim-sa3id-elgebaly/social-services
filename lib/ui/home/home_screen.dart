import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'tabs/chat_tab.dart';
import 'tabs/home_tab.dart';
import 'tabs/search_tab.dart';
import 'tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SearchController controller = SearchController();
  int selectedIndex = 0;
  List<Widget> tabs = [
    const HomeTab(),
    const SearchTab(),
    const ChatTab(),
    const SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social services"),
        actions: [
          SearchAnchor(
            searchController: controller,
            builder: (context, controller) {
              return IconButton(onPressed: () {
                controller.openView();
              }, icon: Icon(Icons.search),);
            },
            suggestionsBuilder: (context, controller) {
              return List<ListTile>.generate(6, (index) {
                String item = "item $index";
                return ListTile(
                  title: Text("item"),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  },
                );
              });
            },
          ),
          SizedBox(width: 12.w),
        ],
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), label: "Achievements"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Forum"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          ]),
    );
  }
}
