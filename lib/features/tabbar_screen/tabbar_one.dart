import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutters_widgets_daily/constant/text_font_style.dart';
import 'package:flutters_widgets_daily/features/splash_screen/splash_screen_one.dart';
import 'package:flutters_widgets_daily/gen/colors.gen.dart';

class TabbarOne extends StatefulWidget {
  const TabbarOne({super.key});

  @override
  State<TabbarOne> createState() => _TabbarOneState();
}

class _TabbarOneState extends State<TabbarOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SegmentedTabControl(
                  tabTextColor: AppColors.c000000,
                  selectedTabTextColor: AppColors.cFFFFFF,
                  tabPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 45,
                  squeezeIntensity: 2,
                  textStyle: TextFontStyle.customizePoppinsFont,
                  selectedTextStyle: TextFontStyle.customizePoppinsFont
                      .copyWith(fontWeight: FontWeight.bold),
                  tabs: const [
                    SegmentTab(label: 'Home', color: AppColors.allPrimaryColor),
                    SegmentTab(label: 'Profile', color: AppColors.cEA0C09),
                    SegmentTab(label: 'Settings', color: AppColors.c041C43),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: TabBarView(
                  children: [
                    Container(
                      color: AppColors.allPrimaryColor,
                    ),
                    Container(
                      child: const SplashScreenOne(),
                    ),
                    Container(
                      color: AppColors.c041C43,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
