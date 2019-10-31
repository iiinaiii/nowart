import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/bloc/art_search_bloc.dart';
import 'package:nowart/ui/page/map/map_bloc.dart';
import 'package:nowart/ui/page/search/search_result_page.dart';

class TopPage extends StatelessWidget {
  static Widget create() {
    return BlocProvider<ArtSearchBloc>(
      creator: (_, __) => ArtSearchBloc(),
      child: TopPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ArtSearchBloc artSearchBloc = BlocProvider.of<ArtSearchBloc>(context);
    final MapBloc mapBloc = BlocProvider.of<MapBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Page'),
      ),
      body: Stack(
        children: <Widget>[
          StreamBuilder<Widget>(
              stream: mapBloc.mapPage,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Container();
                }
                return snapshot.data;
              }),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: RaisedButton(
                child: const Text('Search'),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    SearchResultPage.createPageRoute(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
