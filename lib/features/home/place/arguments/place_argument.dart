import 'package:domain/entities/entities.dart';

class PlaceArgument {
  PlaceArgument({
    required this.locationId,
    required this.locationType,
    required this.name,
  });

  factory PlaceArgument.fromJson(Map<String, dynamic> map) {
    return PlaceArgument(
      locationId: map['locationId'] as String?,
      locationType: map['locationType'] != null && map['locationType'] != ''
          ? LocationType.values[int.parse(map['locationType'])]
          : null,
      name: map['name'] as String?,
    );
  }

  final String? locationId;
  final LocationType? locationType;
  final String? name;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'locationId': locationId,
    'locationType': locationType?.index.toString(),
    'name': name,
  };
}
