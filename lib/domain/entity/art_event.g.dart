// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtEvent _$ArtEventFromJson(Map<String, dynamic> json) {
  return ArtEvent(
    name: json['Name'] as String,
    latitude: json['Latitude'] as String,
    longitude: json['Longitude'] as String,
  );
}

Map<String, dynamic> _$ArtEventToJson(ArtEvent instance) => <String, dynamic>{
      'Name': instance.name,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
    };
