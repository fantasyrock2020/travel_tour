// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/core.dart' as _i494;
import 'package:data/datasource/api/mapper/place_mapper.dart' as _i1036;
import 'package:data/datasource/api/place/place_api.dart' as _i127;
import 'package:data/di/data.injector.dart' as _i119;
import 'package:data/repositories/place_repository_impl.dart' as _i39;
import 'package:domain/repositories/place_repository.dart' as _i330;
import 'package:injectable/injectable.dart' as _i526;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final registerDataModule = _$RegisterDataModule();
    gh.singleton<_i1036.PlaceMapper>(() => _i1036.PlaceMapper());
    gh.lazySingleton<_i494.Dio>(() => registerDataModule.dio());
    gh.lazySingleton<_i127.PlaceApi>(() => _i127.PlaceApi(gh<_i494.Dio>()));
    gh.lazySingleton<_i330.PlaceRepository>(() => _i39.PlaceRepositoryImpl(
          gh<_i127.PlaceApi>(),
          gh<_i1036.PlaceMapper>(),
        ));
  }
}

class _$RegisterDataModule extends _i119.RegisterDataModule {}
