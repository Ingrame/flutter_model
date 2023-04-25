import 'package:get/get_navigation/src/routes/get_route.dart';

import '../i_router.dart';

/// College router 模块
class CollegeRouter implements IRouterProvider {
  // static String collegePage = '/college';

  @override
  List<GetPage> routes() {
    return [
      // GetPage(
      //   name: collegePage,
      //   page: () => const CollegePage(),
      // ),
    ];
  }
}
