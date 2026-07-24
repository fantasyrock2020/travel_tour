import 'dart:math' as math;

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../logger/logger_service.dart';
import 'location_address_model.dart';

export 'location_address_model.dart';

class LocationService with LoggerService {
  LocationService._();

  static final LocationService _instance = LocationService._();
  static LocationService get intance => _instance;

  Position? currentPosition;
  LocationAddressModel? currentPlace;

  Future<Position> getCurrentPosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future<Position>.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future<Position>.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    const LocationSettings locationSettings = LocationSettings(accuracy: .low);

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    currentPosition = await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );
    getAddressFromCoordinates(
      currentPosition!.latitude,
      currentPosition!.longitude,
    );
    return currentPosition!;
  }

  double calculateDistanceKm({required double lat, required double lng}) {
    if (currentPosition == null) {
      return 0;
    }

    const double earthRadiusKm = 6371.0;

    final double dLat = _degToRad(lat - currentPosition!.latitude);
    final double dLng = _degToRad(lng - currentPosition!.longitude);

    final double a =
        math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_degToRad(currentPosition!.latitude)) *
            math.cos(_degToRad(lat)) *
            math.sin(dLng / 2) *
            math.sin(dLng / 2);

    final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadiusKm * c;
  }

  double _degToRad(double deg) => deg * (math.pi / 180.0);

  Future<void> getAddressFromCoordinates(double lat, double lng) async {
    final List<Placemark> placemarks = await Geocoding()
        .placemarkFromCoordinates(lat, lng);

    if (placemarks.isEmpty) {
      logWarning('No placemark found for ($lat, $lng)');
      return;
    }

    currentPlace = LocationAddressModel.fromPlacemark(placemarks.first);
    logInfo('[Geocoding] Placemark for ($lat, $lng): $currentPlace');
  }
}
