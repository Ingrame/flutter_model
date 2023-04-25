import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CollegePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CollegeLogic());
    final state = Get.find<CollegeLogic>().state;

    return Container(
      alignment: Alignment.center,
      child: Text('CollegePage'),
    );
  }
}
