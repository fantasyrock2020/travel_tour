// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/repositories/place_repository.dart' as _i330;
import 'package:injectable/injectable.dart' as _i526;
import 'package:travel_tour/features/home/home/bloc/home_bloc.dart' as _i153;
import 'package:travel_tour/features/home/place/bloc/place_bloc.dart' as _i494;
import 'package:travel_tour/features/splash/bloc/splash_bloc.dart' as _i807;

class TravelTourPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i153.HomeHomeBloc>(() => _i153.HomeHomeBloc());
    gh.factory<_i494.HomePlaceBloc>(() => _i494.HomePlaceBloc());
    gh.factory<_i807.SplashBloc>(
        () => _i807.SplashBloc(gh<_i330.PlaceRepository>()));
  }
}
