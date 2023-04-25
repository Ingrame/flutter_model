import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'logic.dart';

class RunPage extends StatelessWidget {
   RunPage({super.key});
  final logic = Get.put(RunLogic());
  final state = Get.find<RunLogic>().state;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: StreamBuilder<Position>(
        stream: Geolocator.getPositionStream(),
        builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          LatLng currentPosition = LatLng(snapshot.data!.latitude, snapshot.data!.longitude);
          return FlutterMap(
            options: MapOptions(
              center: currentPosition,
              zoom: 10.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                "https://api.mapbox.com/styles/v1/mapbox/streets-v12/tiles/256/{z}/{x}/{y}@2x?access_token={access_token}",
                additionalOptions: {
                  "access_token": 'sk.eyJ1IjoieHJ1biIsImEiOiJjbDQybGNyM3EwMXp1M2NuOGQ3Nm5keXRrIn0.gXnMG_ChqPzuXK4hglYCQA',
                },
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(markers: [
                Marker(
                  point: currentPosition,
                  builder: (ctx) => Icon(Icons.fiber_manual_record_rounded, color: Colors.cyanAccent),
                ),
              ]),
            ],
          );
        },
      )
    );
  }
}
