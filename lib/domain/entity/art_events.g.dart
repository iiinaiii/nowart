// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtEvents _$ArtEventsFromJson(Map<String, dynamic> json) {
  return ArtEvents(
    events: (json['Event'] as List)
        ?.map((e) =>
            e == null ? null : ArtEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ArtEventsToJson(ArtEvents instance) => <String, dynamic>{
      'Event': instance.events,
    };
