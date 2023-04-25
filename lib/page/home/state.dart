import 'package:flutter/material.dart';
import 'package:xrun_dapp/page/college/view.dart';
import 'package:xrun_dapp/page/profile/view.dart';
import 'package:xrun_dapp/page/property/view.dart';
import 'package:xrun_dapp/page/run/view.dart';
import 'package:get/get.dart';

class HomeState {
  late List<Widget> pageList; //页面列表
  late List<String> appBarTitles; //页面标题
  late PageController pageController; //页面控制器
  late RxInt currentIndex; //当前页面索引


  late double bottomIconSize; //底部导航栏图标大小
  HomeState() {
    ///Initialize variables
    pageList = [ PropertyPage(), RunPage(), CollegePage(), ProfilePage()];
    appBarTitles = ['property', 'run', 'college', 'profile'];
    pageController = PageController();
    currentIndex = 0.obs;


    bottomIconSize = 24.0;
  }
}
