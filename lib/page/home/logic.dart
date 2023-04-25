import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();




  // 切换页面
  void changePage(int index) {
    state.currentIndex.value = index;
    state.pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
