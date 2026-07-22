import 'package:core/core.dart';

part 'location_entity.freezed.dart';
part 'location_entity.g.dart';

enum LocationType { province, commune, tour }

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String id,
    required String name,

    // Type: province / commune
    required LocationType type,

    // Parent ID (null for root like province)
    String? parentId,
    @Default(<Location>[]) List<Location> communes,

    // For map features
    double? lat,
    double? lng,

    // Optional: slug for SEO or routing
    String? slug,
    String? image,

    List<String>? previousDistricts,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
