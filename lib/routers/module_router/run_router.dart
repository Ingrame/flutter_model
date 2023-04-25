import 'package:get/get_navigation/src/routes/get_route.dart';

import '../i_router.dart';

/// Run router 模块
class RunRouter implements IRouterProvider {
  // static String runPage = '/run';


  @override
  List<GetPage> routes() {
    return [
      // GetPage(
      //   name: runPage,
      //   page: () => const RunPage(),
      // ),
    ];
  }
}
