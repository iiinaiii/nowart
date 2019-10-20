import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nowart/bloc/map_bloc.dart';

class MapPage extends StatefulWidget {
  static Widget create(Widget contentsPage) {
    return BlocProvider<MapBloc>(
      creator: (_, __) => MapBloc(),
      child: Stack(
        children: <Widget>[
          MapPage(),
          contentsPage,
        ],
      ),
    );
  }

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  MapBloc _mapBloc;

  @override
  Widget build(BuildContext context) {
    _mapBloc = BlocProvider.of<MapBloc>(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(35.6580339, 139.7016358),
            zoom: 17.0,
          ),
          myLocationEnabled: true,
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapBloc.setMapController(controller);
  }
}
