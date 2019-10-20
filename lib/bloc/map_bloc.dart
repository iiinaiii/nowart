import 'package:bloc_provider/bloc_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapBloc extends Bloc {
  GoogleMapController _mapController;

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  void dispose() {}
}
