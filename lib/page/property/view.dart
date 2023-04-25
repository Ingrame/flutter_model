import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class PropertyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(PropertyLogic());
    final state = Get.find<PropertyLogic>().state;

    return Container(
      alignment: Alignment.center,
      child: Text('PropertyPage'),
    );
  }
}
