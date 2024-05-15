import 'package:azkari_project/Tabs/Quran_Tab/quran_tab.dart';
import 'package:azkari_project/Tabs/Sebha_Tab/sebha_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "FirstScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(420, 870));
    return SafeArea(
      child: Scaffold(
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (int value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/dua.png")),
                label: "dua"),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    Container(),
    QuranTab(),
    SebhaTab(),
    Container(),
  ];
}
