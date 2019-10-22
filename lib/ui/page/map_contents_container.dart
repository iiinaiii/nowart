import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/bloc/map_contents_bloc.dart';

class MapContentsContainer extends StatefulWidget {
  static Widget create() {
    return BlocProvider<MapContentsBloc>(
      creator: (_, __) => MapContentsBloc(),
      child: MapContentsContainer(),
    );
  }

  @override
  _MapContentsContainerState createState() => _MapContentsContainerState();
}

class _MapContentsContainerState extends State<MapContentsContainer> {
  @override
  Widget build(BuildContext context) {
    final MapContentsBloc _bloc = BlocProvider.of<MapContentsBloc>(context);

    return WillPopScope(
      onWillPop: () async {
        return _bloc.pop();
      },
      child: StreamBuilder<Widget>(
          stream: _bloc.currentWidget,
          builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
            return Container(
              child: snapshot?.data ?? Container(),
            );
          }),
    );
  }
}
