import 'package:json_annotation/json_annotation.dart';

part 'art_event.g.dart';

@JsonSerializable()
class ArtEvent {
  ArtEvent({
    this.name,
//    this.description,
    this.latitude,
    this.longitude,
  });

  factory ArtEvent.fromJson(Map<String, dynamic> json) => _$ArtEventFromJson(json);

  @JsonKey(name: 'Name')
  String name;
//  @JsonKey(name: 'Description')
//  String description;
  @JsonKey(name: 'Latitude')
  String latitude;
  @JsonKey(name: 'Longitude')
  String longitude;
}
