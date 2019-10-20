import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/domain/art_repository.dart';
import 'package:nowart/infra/art_api_provider.dart';

class ArtSearchBloc extends Bloc {
  final ArtRepository _repository = ArtRepository(ArtApiProvider());

  void fetchArtEvents({
    @required String lat,
    @required String lon,
  }) {
    _repository.fetchArtEvents(lat: lat, lon: lon);
  }

  @override
  void dispose() {}
}
