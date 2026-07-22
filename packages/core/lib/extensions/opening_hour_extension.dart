import 'package:domain/entities/place/opening_hour_entity.dart';

import '../enums/place_enums.dart';

extension OpeningHoursExtension on OpeningHours {
  DayOpeningHours? hoursForDay(int day) {
    for (final DayOpeningHours d in schedule) {
      if (d.day == day) {
        return d;
      }
    }
    return null;
  }

  PlaceOpenStatusEnum statusAt({int soonThresholdMinutes = 30}) {
    if (isOpen24Hours) {
      return PlaceOpenStatusEnum.open24Hours;
    }
    if (schedule.isEmpty) {
      return PlaceOpenStatusEnum.unknown;
    }

    final DateTime now = DateTime.now();

    final DayOpeningHours? todayHours = hoursForDay(now.weekday);

    if (todayHours != null &&
        !todayHours.isClosed &&
        todayHours.openTime != null &&
        todayHours.closeTime != null) {
      final int nowMin = now.hour * 60 + now.minute;
      final int openMin = _toMinutes(todayHours.openTime!);
      final int closeMin = _toMinutes(todayHours.closeTime!);

      if (nowMin >= openMin && nowMin <= closeMin) {
        final int minutesLeft = closeMin - nowMin;
        return (minutesLeft <= soonThresholdMinutes
            ? PlaceOpenStatusEnum.closingSoon
            : PlaceOpenStatusEnum.open);
      }
    }

    final int? minutesUntilOpen = _minutesUntilNextOpen(now);
    if (minutesUntilOpen != null && minutesUntilOpen <= soonThresholdMinutes) {
      return PlaceOpenStatusEnum.openingSoon;
    }

    return PlaceOpenStatusEnum.closed;
  }

  int? _minutesUntilNextOpen(DateTime now) {
    for (int offset = 0; offset < 7; offset++) {
      final DateTime checkDate = now.add(Duration(days: offset));
      final DayOpeningHours? hours = hoursForDay(checkDate.weekday);

      if (hours == null || hours.isClosed || hours.openTime == null) {
        continue;
      }

      final int openMin = _toMinutes(hours.openTime!);

      if (offset == 0) {
        final int nowMin = now.hour * 60 + now.minute;
        if (openMin > nowMin) {
          return openMin - nowMin;
        }
        continue;
      } else {
        final int minutesToday = (24 * 60) - (now.hour * 60 + now.minute);
        final int fullDaysBetween = (offset - 1) * 24 * 60;
        return minutesToday + fullDaysBetween + openMin;
      }
    }
    return null;
  }

  int _toMinutes(String hhmm) {
    final List<String> parts = hhmm.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }
}
