part of 'place_bloc.dart';

@freezed
abstract class HomePlaceEvent with _$HomePlaceEvent {
  const factory HomePlaceEvent.started(String? locationId) = _Started;
  const factory HomePlaceEvent.changeCategory(String id) = _ChangeCategory;
  const factory HomePlaceEvent.loadPlaces(
    String? categoryId,
    String? locationId,
  ) = _LoadPlaces;
  const factory HomePlaceEvent.applyFilter(PlaceFilter? filter) = _ApplyFilter;
}
