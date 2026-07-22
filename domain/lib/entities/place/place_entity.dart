import 'package:core/core.dart';

import 'opening_hour_entity.dart';

part 'place_entity.freezed.dart';
part 'place_entity.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required String id,
    required String name,
    required String locationId,
    required double lat,
    required double lng,
    @Default(<String>[]) List<String> categoryId,
    String? description,
    @Default(0) double distance,

    // Images
    @Default(<String>[]) List<String> images,

    // Ratings
    @Default(0.0) double rating,
    @Default(0) int reviewCount,

    // Price range: 1-4 (cheap -> expensive)
    // 1 = $    Budget       (~under 50,000 VND / ~$2)      e.g. street food, local quán
    // 2 = $$   Moderate     (~50,000 - 150,000 VND)        e.g. casual cafes, mid-range restaurants
    // 3 = $$$  Expensive    (~150,000 - 400,000 VND)       e.g. upscale dining, rooftop bars
    // 4 = $$$$ Very Expensive (~400,000+ VND)              e.g. fine dining, luxury hotels
    int? priceLevel,
    String? priceRange,

    // Tags: "local", "trendy", "hidden_gem"
    @Default(<String>[]) List<String> tags,

    // Open hours (simple first)
    OpeningHours? openingHours,

    // Contact
    String? address,

    @Default(false) bool isBestChoice,
  }) = _Place;

  const Place._();

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
