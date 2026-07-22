part of 'home_bloc.dart';

@freezed
abstract class HomeHomeState with _$HomeHomeState {
  const factory HomeHomeState({
    @Default(false) bool success,
    @Default(<Location?>[]) List<Location?> locations,
  }) = _HomeHomeState;
}
