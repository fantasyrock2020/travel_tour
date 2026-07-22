import 'package:core/core.dart';

import 'place_category_entity.dart';

part 'filter_entity.freezed.dart';
part 'filter_entity.g.dart';

@freezed
abstract class PlaceFilter with _$PlaceFilter {
  const factory PlaceFilter({
    @Default(<PlaceCategoryEnum>{}) Set<PlaceCategoryEnum> categories,
    @Default(<String>{}) Set<String> categoryIds,
    @Default(<PlaceStatusFilterEnum>{}) Set<PlaceStatusFilterEnum> statuses,
    double? minDistanceKm,
    double? maxDistanceKm,
    int? maxPriceLevel,
    double? minRating,
    @Default(<String>{}) Set<String> tags,
  }) = _PlaceFilter;

  const PlaceFilter._();

  factory PlaceFilter.fromJson(Map<String, dynamic> json) =>
      _$PlaceFilterFromJson(json);

  factory PlaceFilter.empty() => const PlaceFilter();

  bool get isEmpty =>
      categories.isEmpty &&
      categoryIds.isEmpty &&
      statuses.isEmpty &&
      minDistanceKm == null &&
      maxDistanceKm == null &&
      maxPriceLevel == null &&
      minRating == null &&
      tags.isEmpty;

  int get activeCount =>
      categories.length +
      categoryIds.length +
      statuses.length +
      (minDistanceKm != null || maxDistanceKm != null ? 1 : 0) +
      (maxPriceLevel != null ? 1 : 0) +
      (minRating != null && minRating! > 0 ? 1 : 0) +
      tags.length;
}
