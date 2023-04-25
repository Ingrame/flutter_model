import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ProfileLogic());
    final state = Get.find<ProfileLogic>().state;

    return Container(
      alignment: Alignment.center,
      child: Text('ProfilePage'),
    );
  }
}
