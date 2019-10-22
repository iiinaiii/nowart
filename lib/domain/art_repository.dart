import 'package:flutter/foundation.dart';
import 'package:nowart/domain/art_data_source.dart';
import 'package:nowart/domain/entity/art_events.dart';

class ArtRepository {
  factory ArtRepository(ArtDataSource dataSource) {
    _singleton ??= ArtRepository._internal(dataSource);
    return _singleton;
  }

  ArtRepository._internal(this._dataSource);

  static ArtRepository _singleton;

  ArtDataSource _dataSource;

  Future<ArtEvents> fetchArtEvents({
    @required String lat,
    @required String lon,
  }) {
    return _dataSource.fetchArtEvents(lat: lat, lon: lon);
  }
}
