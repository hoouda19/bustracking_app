import 'dart:math';

import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/bus_routes_screen/models/bus_routes_model.dart';
import 'package:bustrackingapp/presentation/recommended_routes_screen/controller/recommended_routes_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// A controller class for the BusRoutesScreen.
///
/// This class manages the state of the BusRoutesScreen, including the
/// current busRoutesModelObj
class BusRoutesController extends GetxController {
  Rx<BusRoutesModel> busRoutesModelObj = BusRoutesModel().obs;
  var controller = Get.find<RecommendedRoutesController>();
  var currentTime = DateTime.now().hour;
  Random random = new Random();

  BusRoutesController() {
    // destination = controller.routeFullName.toString().contains('-')
    //     ? controller.routeFullName.split('-')[1]
    //     : controller.routeFullName.split('/')[1];

    // FirebaseFirestore.instance.collection('stop_times').get().then((value) {
    //   currentTime = value.docs[random.nextInt(20)]['arrival_time'];
    // });
  }

  // void currentTrip() {
  //   final fireStoreDB = FirebaseFirestore.instance;
  //   final stopsCollection = fireStoreDB.collection('stops');
  //   final routesCollection = fireStoreDB.collection('routes');
  //   final stopsTimesCollection =
  //       fireStoreDB.collection('stop_times').snapshots();
  //   final tripsCollection = fireStoreDB.collection('trips');

  //   // tripsCollection
  // }

  // List<BusRoutesModel> routeList() {
  //   return [
  //     BusRoutesModel(location: "New York".tr, time: "lbl_5_50_p_m".tr),
  //     BusRoutesModel(
  //         location: "lbl_delaware".tr, time: "msg_next_stop_6_15_p".tr),
  //     BusRoutesModel(location: "lbl_thornridge".tr, time: "lbl_6_30_p_m".tr),
  //     BusRoutesModel(location: "lbl_syracuse".tr, time: "lbl_6_35_p_m".tr),
  //     BusRoutesModel(location: destination, time: "lbl_6_40_p_m".tr),
  //   ];
  // }
}
