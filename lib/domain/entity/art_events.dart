import 'package:json_annotation/json_annotation.dart';
import 'package:nowart/domain/entity/art_event.dart';

part 'art_events.g.dart';

@JsonSerializable()
class ArtEvents {
  ArtEvents({
    this.events,
  });

  factory ArtEvents.fromJson(Map<String, dynamic> json) =>
      _$ArtEventsFromJson(json);

  @JsonKey(name: 'Event')
  List<ArtEvent> events;
}
