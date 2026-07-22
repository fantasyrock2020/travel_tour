// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceFilter _$PlaceFilterFromJson(Map<String, dynamic> json) => _PlaceFilter(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlaceCategoryEnumEnumMap, e))
          .toSet() ??
      const <PlaceCategoryEnum>{},
  categoryIds:
      (json['categoryIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet() ??
      const <String>{},
  statuses:
      (json['statuses'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlaceStatusFilterEnumEnumMap, e))
          .toSet() ??
      const <PlaceStatusFilterEnum>{},
  minDistanceKm: (json['minDistanceKm'] as num?)?.toDouble(),
  maxDistanceKm: (json['maxDistanceKm'] as num?)?.toDouble(),
  maxPriceLevel: (json['maxPriceLevel'] as num?)?.toInt(),
  minRating: (json['minRating'] as num?)?.toDouble(),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toSet() ??
      const <String>{},
);

Map<String, dynamic> _$PlaceFilterToJson(_PlaceFilter instance) =>
    <String, dynamic>{
      'categories': instance.categories
          .map((e) => _$PlaceCategoryEnumEnumMap[e]!)
          .toList(),
      'categoryIds': instance.categoryIds.toList(),
      'statuses': instance.statuses
          .map((e) => _$PlaceStatusFilterEnumEnumMap[e]!)
          .toList(),
      'minDistanceKm': instance.minDistanceKm,
      'maxDistanceKm': instance.maxDistanceKm,
      'maxPriceLevel': instance.maxPriceLevel,
      'minRating': instance.minRating,
      'tags': instance.tags.toList(),
    };

const _$PlaceCategoryEnumEnumMap = {
  PlaceCategoryEnum.food: 'food',
  PlaceCategoryEnum.snack: 'snack',
  PlaceCategoryEnum.coffee: 'coffee',
  PlaceCategoryEnum.relax: 'relax',
  PlaceCategoryEnum.park: 'park',
  PlaceCategoryEnum.playground: 'playground',
  PlaceCategoryEnum.fashion: 'fashion',
  PlaceCategoryEnum.date: 'date',
  PlaceCategoryEnum.luxury: 'luxury',
};

const _$PlaceStatusFilterEnumEnumMap = {
  PlaceStatusFilterEnum.open: 'open',
  PlaceStatusFilterEnum.openingSoon: 'openingSoon',
  PlaceStatusFilterEnum.closed: 'closed',
};
