import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/ui/page/map/map_bloc.dart';
import 'package:nowart/ui/page/top/top_page.dart';

void main() => runApp(
      BlocProvider<MapBloc>(
        creator: (_, __) => MapBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: NowArtApp(),
        ),
      ),
    );

class NowArtApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MapBloc>(context).setMapPage(context);
    return TopPage.create();
  }
}
