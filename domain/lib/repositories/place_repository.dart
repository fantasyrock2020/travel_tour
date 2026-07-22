import '../entities/place/place_entity.dart';

abstract class PlaceRepository {
  Future<List<Place>> getList();
}
