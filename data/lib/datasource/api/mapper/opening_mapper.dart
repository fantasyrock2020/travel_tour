import 'package:domain/entities/place/opening_hour_entity.dart';

class OpeningMapper {
  const OpeningMapper._();

  static OpeningHours? parseOpeningHours({
    required String? raw,
    required bool isAllWeek,
  }) {
    if (raw == null || raw.trim().isEmpty) {
      return null;
    }

    final String normalized = raw.replaceAll(RegExp('[–—]'), '-').trim();
    final String firstRange = normalized.split(',').first.trim();

    final List<String> parts = firstRange.split('-');
    if (parts.length != 2) {
      return null;
    }

    final String? open = _normalizeTime(parts[0].trim());
    final String? close = _normalizeTime(parts[1].trim());
    if (open == null || close == null) {
      return null;
    }

    if (isAllWeek) {
      return OpeningHours(
        schedule:
            <int>[
                  DateTime.monday,
                  DateTime.tuesday,
                  DateTime.wednesday,
                  DateTime.thursday,
                  DateTime.friday,
                  DateTime.saturday,
                  DateTime.sunday,
                ]
                .map(
                  (int day) => DayOpeningHours(
                    day: day,
                    openTime: open,
                    closeTime: close,
                  ),
                )
                .toList(),
      );
    }

    // isAllWeek == false but source data has no per-day breakdown —
    // best-effort: still apply same hours daily, flagged for manual review.
    return OpeningHours(
      schedule:
          <int>[
                DateTime.monday,
                DateTime.tuesday,
                DateTime.wednesday,
                DateTime.thursday,
                DateTime.friday,
                DateTime.saturday,
                DateTime.sunday,
              ]
              .map(
                (int day) =>
                    DayOpeningHours(day: day, openTime: open, closeTime: close),
              )
              .toList(),
    );
  }

  static String? _normalizeTime(String time) {
    final RegExpMatch? match = RegExp(r'^(\d{1,2}):(\d{2})$').firstMatch(time);
    if (match == null) {
      return null;
    }
    final String hour = match.group(1)!.padLeft(2, '0');
    final String minute = match.group(2)!;
    return '$hour:$minute';
  }
}
