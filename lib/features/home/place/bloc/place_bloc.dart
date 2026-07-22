import 'dart:async';

import 'package:core/core.dart';
import 'package:domain/domain.dart';

import '../../../../constants/constants.dart';

part 'place_bloc.freezed.dart';
part 'place_event.dart';
part 'place_state.dart';

@injectable
class HomePlaceBloc extends BaseBloc<HomePlaceEvent, HomePlaceState> {
  HomePlaceBloc() : super(HomePlaceState(filter: PlaceFilter.empty())) {
    on<_Started>(_onStarted);
    on<_ApplyFilter>(_onApplyFilter);
  }

  PlaceService get _placeService => PlaceService.intance;
  List<Place> _tempPlaces = <Place>[];

  Future<void> _onStarted(_Started event, Emitter<HomePlaceState> emit) async {
    if (event.locationId == null || event.locationId!.isEmpty) {
      _tempPlaces = _placeService.places.where((Place place) {
        final double distance = LocationService.intance.calculateDistanceKm(
          lat: place.lat,
          lng: place.lng,
        );
        return distance <= Strings.defaultMaxDistanceKm;
      }).toList();
    } else {
      _tempPlaces = _placeService.places
          .where((Place place) => place.locationId == event.locationId)
          .toList();
    }
    _tempPlaces = _sortByDistance(_tempPlaces);
    emit(state.copyWith(places: <Place>[..._tempPlaces]));
  }

  Future<void> _onApplyFilter(
    _ApplyFilter event,
    Emitter<HomePlaceState> emit,
  ) async {
    final PlaceFilter newFilter = event.filter ?? PlaceFilter.empty();

    Iterable<Place> places = <Place>[..._tempPlaces];

    if (!newFilter.isEmpty) {
      places = places.where((Place place) {
        // 1. Filter by PlaceCategoryEnum (categories)
        if (newFilter.categories.isNotEmpty) {
          final bool matchesCategory = newFilter.categories.any((
            PlaceCategoryEnum cat,
          ) {
            final List<String> keywords = cat.matchingKeywords;
            return place.categoryId.any(
                  (String c) =>
                      keywords.contains(c) ||
                      keywords.contains(c.toLowerCase()),
                ) ||
                place.tags.any(
                  (String t) =>
                      keywords.contains(t) ||
                      keywords.contains(t.toLowerCase()),
                );
          });
          if (!matchesCategory) {
            return false;
          }
        }

        // Filter by categoryIds (if specified)
        if (newFilter.categoryIds.isNotEmpty) {
          final bool matchesCategoryId =
              place.categoryId.any(
                (String c) => newFilter.categoryIds.contains(c),
              ) ||
              place.tags.any((String t) => newFilter.categoryIds.contains(t));
          if (!matchesCategoryId) {
            return false;
          }
        }

        // 2. Filter by Open Status (statuses)
        if (newFilter.statuses.isNotEmpty) {
          final PlaceOpenStatusEnum status =
              place.openingHours?.statusAt() ?? PlaceOpenStatusEnum.unknown;

          final bool matchesStatus = newFilter.statuses.any((
            PlaceStatusFilterEnum sf,
          ) {
            switch (sf) {
              case PlaceStatusFilterEnum.open:
                return status == PlaceOpenStatusEnum.open ||
                    status == PlaceOpenStatusEnum.open24Hours ||
                    status == PlaceOpenStatusEnum.closingSoon;
              case PlaceStatusFilterEnum.openingSoon:
                return status == PlaceOpenStatusEnum.openingSoon;
              case PlaceStatusFilterEnum.closed:
                return status == PlaceOpenStatusEnum.closed;
            }
          });
          if (!matchesStatus) {
            return false;
          }
        }

        // 3. Filter by Distance Range (minDistanceKm, maxDistanceKm)
        final double dist = place.distance != 0
            ? place.distance
            : LocationService.intance.calculateDistanceKm(
                lat: place.lat,
                lng: place.lng,
              );

        if (newFilter.minDistanceKm != null &&
            dist < newFilter.minDistanceKm!) {
          return false;
        }
        if (newFilter.maxDistanceKm != null &&
            dist > newFilter.maxDistanceKm!) {
          return false;
        }

        // 4. Filter by maxPriceLevel
        if (newFilter.maxPriceLevel != null &&
            place.priceLevel != null &&
            place.priceLevel! > newFilter.maxPriceLevel!) {
          return false;
        }

        // 5. Filter by minRating
        if (newFilter.minRating != null &&
            place.rating < newFilter.minRating!) {
          return false;
        }

        // 6. Filter by tags
        if (newFilter.tags.isNotEmpty) {
          final bool matchesTags = place.tags.any(
            (String t) => newFilter.tags.contains(t),
          );
          if (!matchesTags) {
            return false;
          }
        }

        return true;
      });
    }

    emit(state.copyWith(filter: newFilter, places: <Place>[...places]));
  }

  List<Place> _sortByDistance(List<Place> places) {
    return places.map((Place place) {
      if (place.distance != 0) {
        return place;
      }
      return place.copyWith(
        distance: LocationService.intance.calculateDistanceKm(
          lat: place.lat,
          lng: place.lng,
        ),
      );
    }).toList()..sort((Place a, Place b) => a.distance.compareTo(b.distance));
  }
}
