// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hour_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DayOpeningHours _$DayOpeningHoursFromJson(Map<String, dynamic> json) =>
    _DayOpeningHours(
      day: (json['day'] as num).toInt(),
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
      isClosed: json['isClosed'] as bool? ?? false,
    );

Map<String, dynamic> _$DayOpeningHoursToJson(_DayOpeningHours instance) =>
    <String, dynamic>{
      'day': instance.day,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'isClosed': instance.isClosed,
    };

_OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) =>
    _OpeningHours(
      schedule:
          (json['schedule'] as List<dynamic>?)
              ?.map((e) => DayOpeningHours.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DayOpeningHours>[],
      isOpen24Hours: json['isOpen24Hours'] as bool? ?? false,
    );

Map<String, dynamic> _$OpeningHoursToJson(_OpeningHours instance) =>
    <String, dynamic>{
      'schedule': instance.schedule,
      'isOpen24Hours': instance.isOpen24Hours,
    };
