import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/presentation/map_screen/models/map_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_geocoding_api/google_geocoding_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../recommended_routes_screen/controller/recommended_routes_controller.dart';

/// A controller class for the MapScreen.
///
/// This class manages the state of the MapScreen, including the
/// current mapModelObj
class MapController extends GetxController {
  Rx<MapModel> mapModelObj = MapModel(mapFrom: 0, mapTo: 0).obs;

  final fireStoreDB =
      FirebaseFirestore.instance.collection('stops').snapshots();
  GoogleMapController? mapsController;

  // var controller = Get.find<RecommendedRoutesController>();
  @override
  void onClose() {
    super.onClose();
    mapsController!.dispose();
  }

  // var latFrom = 0.0;
  // var lngFrom = 0.0;
  var latTo = 0.0;
  var lngTo = 0.0;
  Future<void> geocodingApi(String to) async {
    const String googelApiKey = 'AIzaSyBVgvpedaj_6YtcZfTxI7UXzg0XhNqWc_Y';
    final bool isDebugMode = true;
    final api = GoogleGeocodingApi(googelApiKey, isLogged: isDebugMode);
    // final searchResultsFrom = await api.search(
    //   from,
    //   language: 'en',
    // );
    final searchResultsTo = await api.search(
      to,
      language: 'en',
    );
    // var ResultsFrom = searchResultsFrom.results.elementAt(0).geometry!.location;
    // latFrom = ResultsFrom.lat;
    // lngFrom = ResultsFrom.lng;

    var ResultsTo = searchResultsTo.results.elementAt(0).geometry!.location;
    latTo = ResultsTo.lat;
    lngTo = ResultsTo.lng;

    // print(Results.lat);
  }

  // void currentTrip() {
  //   final fireStoreDB = FirebaseFirestore.instance;
  //   final stopsCollection = fireStoreDB.collection('stops').snapshots();
  //   final routesCollection = fireStoreDB.collection('routes').snapshots();
  //   final stopsTimesCollection =
  //       fireStoreDB.collection('stop_times').snapshots();
  //   final tripsCollection = fireStoreDB.collection('trips').doc();

  //   // tripsCollection
  // }
}
