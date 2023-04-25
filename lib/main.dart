import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:sp_util/sp_util.dart';


import 'routers/routers.dart';

Future<void> main() async {

  /// 去除URL中的“#”(hash)，仅针对Web。默认为setHashUrlStrategy
  /// 注意本地部署和远程部署时`web/index.html`中的base标签，https://github.com/flutter/flutter/issues/69760
  setPathUrlStrategy();

  /// sp初始化
  /// /// await SpUtil initialization to complete before running the app.
  /// /// sp init time release about 30ms，debug about 100ms.(Test on Android.)
  await SpUtil.getInstance();


  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return ScreenUtilInit(
      //填入设计稿中设备的屏幕尺寸,单位dp
        designSize: const Size(375, 812),
        minTextAdapt: true,  //是否根据宽度/高度中的最小值适配文字
        splitScreenMode: true, //支持分屏尺寸适配
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false, //关闭调试
          title: 'Flutter Demo',
          initialRoute: '/home', // 设置初始路由
          getPages: Routes.initRoutes(), // 初始化路由
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        );
      }
    );
  }
}


