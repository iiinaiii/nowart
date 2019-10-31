import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/bloc/art_search_bloc.dart';
import 'package:nowart/ui/page/map/map_bloc.dart';

class SearchResultPage2 extends StatelessWidget {
  static Widget create() {
    return BlocProvider<ArtSearchBloc>(
      creator: (_, __) => ArtSearchBloc(),
      child: SearchResultPage2(),
    );
  }

  static PageRoute<SearchResultPage2> createPageRoute() {
    return MaterialPageRoute<SearchResultPage2>(
      builder: (BuildContext context) => BlocProvider<ArtSearchBloc>(
        creator: (_, __) => ArtSearchBloc(),
        child: SearchResultPage2(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final MapBloc mapBloc = BlocProvider.of<MapBloc>(context);
    return Stack(
      children: <Widget>[
        StreamBuilder<Widget>(
            stream: mapBloc.mapPage,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container();
              }

              return snapshot.data;
            }),
        Center(
          child: RaisedButton(
            child: Text("page2"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
