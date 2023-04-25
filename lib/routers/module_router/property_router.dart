import 'package:get/get_navigation/src/routes/get_route.dart';

import '../i_router.dart';

/// property 模块路由
class PropertyRouter implements IRouterProvider {

  // static String propertyPage = '/property';

  @override
  List<GetPage> routes() {
    return [
      // GetPage(
      //   name: propertyPage,
      //   page: () => const PropertyPage(),
      // ),
    ];
  }
}