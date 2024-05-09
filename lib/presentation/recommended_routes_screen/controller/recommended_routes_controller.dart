import 'dart:math';

import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/recommended_routes_screen/models/recommended_routes_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// A controller class for the RecommendedRoutesScreen.
///
/// This class manages the state of the RecommendedRoutesScreen, including the
/// current recommendedRoutesModelObj
class RecommendedRoutesController extends GetxController {
  Rx<RecommendedRoutesModel> recommendedRoutesModelObj =
      RecommendedRoutesModel().obs;
  // HomeSearchController controller = Get.put(HomeSearchController());
  RxBool isTrue = false.obs;
  final fireStoreDB = //old style
      FirebaseFirestore.instance.collection('routes');
  // HomeController controller = Get.put(HomeController());
  // var controllerMap = Get.find<MapController>();

  // double getDistanceFromGPSPointsInRoute(List<LatLng> gpsList) {
  //   double totalDistance = 0.0;

  //   for (var i = 0; i < gpsList.length - 1; i++) {
  //     var p = 0.017453292519943295;
  //     var c = cos;
  //     var a = 0.5 -
  //         c((gpsList[i + 1].latitude - gpsList[i].latitude) * p) / 2 +
  //         c(gpsList[i].latitude * p) *
  //             c(gpsList[i + 1].latitude * p) *
  //             (1 - c((gpsList[i + 1].longitude - gpsList[i].longitude) * p)) /
  //             2;
  //     double distance = 12742 * asin(sqrt(a));
  //     totalDistance += distance;
  //     print('Distance is ${12742 * asin(sqrt(a))}');
  //   }
  //   print('Total distance is $totalDistance');
  //   return totalDistance;
  // }

  // void getDistance() {
  //   print(getDistanceFromGPSPointsInRoute([
  //     LatLng(controller.lat, controller.lng),
  //     LatLng(controllerMap.latTo, controllerMap.lngTo)
  //   ]));
  // }
  // Map trips = ;
  // void tripsTime() {
  //   final fireStoreDb = FirebaseFirestore.instance
  //       .collection('trips')
  //       .doc()
  //       .get()
  //       .then((value) {
  //     trips.add(value['departure_time']);
  //   });
  // }

  // Trip() async {
  //   final fireStoreDBTrip =
  //       await FirebaseFirestore.instance.collection('trips').get();

  //   fireStoreDBTrip.docs.map((e) {
  //     var data = e.data();
  //     data[0]['trip_id'];
  //   });
  // }

  // QuerySnapshot<Map<String, dynamic>>? querySnapshot;

  // getTrip(String routeId) async {
  //   final fireStoreDBTrip = FirebaseFirestore.instance.collection('trips');
  //   var docSnapshot =
  //       await fireStoreDBTrip.where('route_id', isEqualTo: routeId).get();
  //   querySnapshot!.docs.map((e) => print(e['trip_id']));
  // } QuerySnapshot<Map<String, dynamic>>? querySnapshot;

// TripsTimesModel? tripsTimeModelList;
  String tripId = '';
  void tripsTime(String routeId) {
    final fireStoreDb = FirebaseFirestore.instance;
    // fireStoreDb.collection('stop_times').doc().get().then((value) {
    //   TripsModelList.add(TripsTimesModel(
    //       arrival_time: value['arrival_time'],
    //       trip_id: value['trip_id'],
    //       stop_sequence: value['stop_sequence']));
    // });

    // fireStoreDb
    //     .collection('trips')
    //     .doc()
    //     // .where('route_id', isEqualTo: routeId)
    //     .get()
    //     .then((value) {
    //   print('${value.id}  test');
    //   tripId = value.id;
    // });
    // fireStoreDb
    //     .collection('stop_times')
    //     .where('trip_id', isEqualTo: tripId)
    //     .get()
    //     .then((value) {
    //   var data = value.docs;
    //   print(data.single['arrival_time']);
    // });
  }

  int currnetBus = 0;
  String routeFullName = '';
  // var current = LatLng(controller.lat, controller.lng);

//   String currentLocaionApi =
//       'https://maps.googleapis.com/maps/api/staticmap?center=30.0070125,31.1467779&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:A%7C30.0070125,31.1467779&key=AIzaSyBVgvpedaj_6YtcZfTxI7UXzg0XhNqWc_Y';
}
