import 'package:get/get.dart';
import 'package:xrun_dapp/page/home/view.dart';

import 'i_router.dart';
import 'module_router/college_router.dart';
import 'module_router/profile_router.dart';
import 'module_router/property_router.dart';
import 'module_router/run_router.dart';

class Routes {

  // 存储应用程序中的各个功能模块的路由
  static final List<IRouterProvider> _listRouter = [];

  //初始化应用程序的所有路由
  static List<GetPage> initRoutes() {
    //清空 _listRouter 列表
    _listRouter.clear();

    ///添加各个功能模块的路由
    /// 各自路由由各自模块管理，统一在此添加初始化
    // property router 模块
    _listRouter.add(PropertyRouter());

    // Run router 模块
    _listRouter.add(RunRouter());

    // College router 模块
    _listRouter.add(CollegeRouter());

    // Profile router 模块
    _listRouter.add(ProfileRouter());


    //存储所有路由
    List<GetPage> pages = [
      GetPage(
        name: '/home',
        page: () =>  HomePage(),
      ),

    ];

    _listRouter.forEach((routerProvider) {
      pages.addAll(routerProvider.routes());
    });

    return pages;
  }

}