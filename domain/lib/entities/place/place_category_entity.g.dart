// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceCategory _$PlaceCategoryFromJson(Map<String, dynamic> json) =>
    _PlaceCategory(
      id: json['id'] as String,
      name: $enumDecode(_$PlaceCategoryEnumEnumMap, json['name']),
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$PlaceCategoryToJson(_PlaceCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': _$PlaceCategoryEnumEnumMap[instance.name]!,
      'icon': instance.icon,
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
