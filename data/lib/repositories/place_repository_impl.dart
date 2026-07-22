import 'package:core/core.dart';
import 'package:domain/entities/place/place_entity.dart';
import 'package:domain/repositories/place_repository.dart';

import '../datasource/api/mapper/place_mapper.dart';
import '../datasource/api/place/place_api.dart';

@LazySingleton(as: PlaceRepository)
class PlaceRepositoryImpl extends PlaceRepository {
  PlaceRepositoryImpl(this._placeApi, this._placeMapper);

  final PlaceApi _placeApi;
  final PlaceMapper _placeMapper;

  @override
  Future<List<Place>> getList() async {
    final dynamic result = await _placeApi.getList();
    final List<Place> allPlaces = <Place>[];

    (result as Map<String, dynamic>).forEach((
      String locationId,
      dynamic value,
    ) {
      final List<dynamic> items = value as List<dynamic>;

      for (final dynamic item in items) {
        allPlaces.add(
          _placeMapper.mapJsonToPlace(
            locationId: locationId,
            json: item as Map<String, dynamic>,
          ),
        );
      }
    });

    return allPlaces;
  }
}
