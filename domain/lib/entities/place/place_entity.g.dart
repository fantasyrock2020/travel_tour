// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Place _$PlaceFromJson(Map<String, dynamic> json) => _Place(
  id: json['id'] as String,
  name: json['name'] as String,
  locationId: json['locationId'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  categoryId:
      (json['categoryId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  description: json['description'] as String?,
  distance: (json['distance'] as num?)?.toDouble() ?? 0,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
  priceLevel: (json['priceLevel'] as num?)?.toInt(),
  priceRange: json['priceRange'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  openingHours: json['openingHours'] == null
      ? null
      : OpeningHours.fromJson(json['openingHours'] as Map<String, dynamic>),
  address: json['address'] as String?,
  isBestChoice: json['isBestChoice'] as bool? ?? false,
);

Map<String, dynamic> _$PlaceToJson(_Place instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'locationId': instance.locationId,
  'lat': instance.lat,
  'lng': instance.lng,
  'categoryId': instance.categoryId,
  'description': instance.description,
  'distance': instance.distance,
  'images': instance.images,
  'rating': instance.rating,
  'reviewCount': instance.reviewCount,
  'priceLevel': instance.priceLevel,
  'priceRange': instance.priceRange,
  'tags': instance.tags,
  'openingHours': instance.openingHours,
  'address': instance.address,
  'isBestChoice': instance.isBestChoice,
};
