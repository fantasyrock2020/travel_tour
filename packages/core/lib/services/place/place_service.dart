import 'package:domain/entities/place/place_entity.dart';

import '../../core.dart';

class PlaceService with LoggerService {
  PlaceService._();

  static final PlaceService _instance = PlaceService._();
  static PlaceService get intance => _instance;

  final List<Place> places = <Place>[];

  void loadPlaces(List<Place> data) {
    places.addAll(data);

    logInfo('Loaded ${data.length} places');
  }
}
