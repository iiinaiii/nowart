import 'package:flutter/foundation.dart';
import 'package:nowart/domain/entity/art_events.dart';

abstract class ArtDataSource {
  Future<ArtEvents> fetchArtEvents({
    @required String lat,
    @required String lon,
  });
}
