part of 'place_bloc.dart';

@freezed
abstract class HomePlaceState with _$HomePlaceState {
  const factory HomePlaceState({
    required PlaceFilter filter,
    @Default(false) bool success,
    @Default(<Place>[]) List<Place> places,
  }) = _HomePlaceState;
}
