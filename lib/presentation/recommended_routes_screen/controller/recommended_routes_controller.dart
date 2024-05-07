import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/recommended_routes_screen/models/recommended_routes_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../home_search_screen/controller/home_search_controller.dart';

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

  // final fireStoreDb = FirebaseFirestore.instance.collection('trips');

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

  int currnetBus = 0;
  String routeFullName = '';

//   String currentLocaionApi =
//       'https://maps.googleapis.com/maps/api/staticmap?center=30.0070125,31.1467779&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:A%7C30.0070125,31.1467779&key=AIzaSyBVgvpedaj_6YtcZfTxI7UXzg0XhNqWc_Y';
}
