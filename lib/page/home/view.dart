import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controllers/theme_controller.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(HomeLogic());
    final state = Get
        .find<HomeLogic>()
        .state;
    final ThemeController themeController = Get.put(ThemeController());

    return Obx(() {
      return Scaffold(
          backgroundColor: themeController.backgroundColor,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(), // 禁止滑动
            controller: state.pageController,
            children: state.pageList,
          ),
        bottomNavigationBar: SizedBox(
          height: 84.w,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(color: Color(0xFF101416)),
            unselectedLabelStyle: const TextStyle(color: Color(0xFF9EA3AE)),
            selectedItemColor: const Color(0xFF101416),
            unselectedItemColor: const Color(0xFF9EA3AE),
            currentIndex: state.currentIndex.value,
            onTap: (index) => logic.changePage(index),
            items: List.generate(
              state.appBarTitles.length,
                  (index) => BottomNavigationBarItem(
                icon: Padding(
                  padding:  EdgeInsets.only(bottom: 2.w),
                  child: SvgPicture.asset('assets/icons/svg/${state.appBarTitles[index]}_icon.svg',
                    width: 24.w,
                    color: state.currentIndex == index ? Color(0xFF101416) : Color(0xFF9EA3AE),
                  ),
                ),
                label: state.appBarTitles[index].capitalize,
              ),
            ),
          ),
        ),
      );
    });
  }


}
