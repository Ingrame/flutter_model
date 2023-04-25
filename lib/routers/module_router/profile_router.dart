import 'package:get/get_navigation/src/routes/get_route.dart';

import '../i_router.dart';


/// Profile router 模块
class ProfileRouter implements IRouterProvider {
  // static String profilePage = '/profile';

  @override
  List<GetPage> routes() {
    return [
      // GetPage(
      //   name: profilePage,
      //   page: () => const ProfilePage(),
      // ),
    ];
  }
}
