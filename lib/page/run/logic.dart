import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import 'state.dart';

class RunLogic extends GetxController {
  final RunState state = RunState();




  StreamSubscription<Position>? positionStreamSubscription=null;



  //获取用户当前位置
  Future<LatLng> getUserLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    return LatLng(position.latitude, position.longitude);
  }

  @override
  void dispose() {
    positionStreamSubscription?.cancel();
    super.dispose();
  }

}
