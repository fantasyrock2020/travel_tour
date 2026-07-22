import 'package:geocoding/geocoding.dart';

import '../../extensions/extensions.dart';

class LocationAddressModel {
  LocationAddressModel({
    required this.street,
    required this.name,
    required this.country,
    required this.administrativeArea,
    required this.subLocality,
  });

  factory LocationAddressModel.fromPlacemark(Placemark placemark) {
    final List<String>? address = placemark.street?.split(',');
    return LocationAddressModel(
      street: address?.elementAt(0).trim(),
      name: placemark.name,
      country: placemark.country,
      administrativeArea: placemark.administrativeArea,
      subLocality: address?.elementAt(1).trim(),
    );
  }

  final String? street;
  final String? name;
  final String? country;
  final String? administrativeArea; // Province
  final String? subLocality; // Commune

  String? get provinceKeyword => administrativeArea.toKeyword();
  String? get communeKeyword => subLocality.toKeyword();

  @override
  String toString() {
    return 'LocationAddressModel(street: $street, name: $name, country: $country, administrativeArea: $administrativeArea, subLocality: $subLocality)';
  }
}
