import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client, Response;
import 'package:nowart/domain/art_data_source.dart';
import 'package:nowart/domain/entity/art_events.dart';
import 'package:xml2json/xml2json.dart';

class ArtApiProvider extends ArtDataSource {
  static const String AUTHORITY = 'www.tokyoartbeat.com';
  static const String PATH = '/list/event_searchNear';
  static const String QUERY_LAT = 'Latitude';
  static const String QUERY_LON = 'Longitude';

  Client client = Client();

  @override
  Future<ArtEvents> fetchArtEvents({
    @required String lat,
    @required String lon,
  }) async {
    final String url = Uri.https(AUTHORITY, PATH, {QUERY_LAT: lat, QUERY_LON: lon, 'Language': 'ja'}).toString();
    final Response response = await client.get(url);
    print('response::: ${response.body.toString()}');

    final Xml2Json transformer = Xml2Json();
    transformer.parse(response.body);
    final String jsonStr = transformer.toParker();
    if (response.statusCode == 200) {
      print('json::: $jsonStr');
      final Map<String, dynamic> eventMap = json.decode(jsonStr);
      ArtEvents result = ArtEvents.fromJson(eventMap.values.elementAt(0));
      print('result :::: ${result.toString()}');
      return result;
//      List<dynamic> iterable = json.decode(response.body);
//      final beerList = iterable.map((dynamic model) =>
//          BeerResponse.fromJson(model)).toList();
//      return beerList;
    } else {
      throw Exception('Failed to load beers');
    }
  }
}
