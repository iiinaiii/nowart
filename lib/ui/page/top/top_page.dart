import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/bloc/art_search_bloc.dart';
import 'package:nowart/bloc/map_contents_bloc.dart';
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
    return Align(
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
            BlocProvider.of<MapContentsBloc>(context).push(SearchResultPage.create());
          },
        ),
      ),
    );
  }
}
