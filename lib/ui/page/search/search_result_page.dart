import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/bloc/art_search_bloc.dart';
import 'package:nowart/bloc/map_contents_bloc.dart';
import 'package:nowart/ui/page/search/search_result_page2.dart';

class SearchResultPage extends StatelessWidget {
  static Widget create() {
    return BlocProvider<ArtSearchBloc>(
      creator: (_, __) => ArtSearchBloc(),
      child: SearchResultPage(),
    );
  }

  static PageRoute<SearchResultPage> createPageRoute() {
    return MaterialPageRoute<SearchResultPage>(
        builder: (BuildContext context) => BlocProvider<ArtSearchBloc>(
              creator: (_, __) => ArtSearchBloc(),
              child: SearchResultPage(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Go2!!!"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: Colors.blue,
          onPressed: () {
            BlocProvider.of<MapContentsBloc>(context).push(SearchResultPage2.create());
          },
        ),
      ),
    );
  }
}
