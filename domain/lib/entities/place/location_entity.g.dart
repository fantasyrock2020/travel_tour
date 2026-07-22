// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$LocationTypeEnumMap, json['type']),
  parentId: json['parentId'] as String?,
  communes:
      (json['communes'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Location>[],
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
  slug: json['slug'] as String?,
  image: json['image'] as String?,
  previousDistricts: (json['previousDistricts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': _$LocationTypeEnumMap[instance.type]!,
  'parentId': instance.parentId,
  'communes': instance.communes,
  'lat': instance.lat,
  'lng': instance.lng,
  'slug': instance.slug,
  'image': instance.image,
  'previousDistricts': instance.previousDistricts,
};

const _$LocationTypeEnumMap = {
  LocationType.province: 'province',
  LocationType.commune: 'commune',
  LocationType.tour: 'tour',
};
