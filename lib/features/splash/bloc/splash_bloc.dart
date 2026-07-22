import 'dart:async';

import 'package:core/core.dart';
import 'package:domain/entities/place/place_entity.dart';
import 'package:domain/repositories/place_repository.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends BaseBloc<SplashEvent, SplashState> {
  SplashBloc(this._placeRepository) : super(const SplashState()) {
    on<_Started>(_onStarted);
  }

  final PlaceRepository _placeRepository;

  Future<void> _onStarted(_Started event, Emitter<SplashState> emit) async {
    await LocationService.intance.getCurrentPosition();
    final List<Place> result = await _placeRepository.getList();
    PlaceService.intance.loadPlaces(result);
    emit(state.copyWith(success: true));
  }
}
