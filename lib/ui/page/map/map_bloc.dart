import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rxdart/rxdart.dart';

class MapBloc extends Bloc {
  GoogleMapController _mapController;
  final BehaviorSubject<Widget> _mapPage = BehaviorSubject<Widget>();

  Stream<Widget> get mapPage => _mapPage.stream;

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }

  void setMapPage(BuildContext context) {
    _mapPage.add(_createMapPage(context));
  }

  Widget _createMapPage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const GoogleMap(
        onMapCreated: null,
        initialCameraPosition: CameraPosition(
          target: LatLng(35.6580339, 139.7016358),
          zoom: 17.0,
        ),
        myLocationEnabled: true,
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  void dispose() {}
}
