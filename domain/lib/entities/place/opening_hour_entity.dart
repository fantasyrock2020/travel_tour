import 'package:core/core.dart';

part 'opening_hour_entity.freezed.dart';
part 'opening_hour_entity.g.dart';

@freezed
abstract class DayOpeningHours with _$DayOpeningHours {
  const factory DayOpeningHours({
    required int day,
    // Null openTime/closeTime means closed that day
    String? openTime, // e.g. "07:00"
    String? closeTime, // e.g. "22:00"
    @Default(false) bool isClosed,
  }) = _DayOpeningHours;

  factory DayOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$DayOpeningHoursFromJson(json);
}

@freezed
abstract class OpeningHours with _$OpeningHours {
  const factory OpeningHours({
    @Default(<DayOpeningHours>[]) List<DayOpeningHours> schedule,
    // Handles 24/7 places without needing 7 entries
    @Default(false) bool isOpen24Hours,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}
