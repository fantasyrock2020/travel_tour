// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Place {

 String get id; String get name; String get locationId; double get lat; double get lng; List<String> get categoryId; String? get description; double get distance;// Images
 List<String> get images;// Ratings
 double get rating; int get reviewCount;// Price range: 1-4 (cheap -> expensive)
// 1 = $    Budget       (~under 50,000 VND / ~$2)      e.g. street food, local quán
// 2 = $$   Moderate     (~50,000 - 150,000 VND)        e.g. casual cafes, mid-range restaurants
// 3 = $$$  Expensive    (~150,000 - 400,000 VND)       e.g. upscale dining, rooftop bars
// 4 = $$$$ Very Expensive (~400,000+ VND)              e.g. fine dining, luxury hotels
 int? get priceLevel; String? get priceRange;// Tags: "local", "trendy", "hidden_gem"
 List<String> get tags;// Open hours (simple first)
 OpeningHours? get openingHours;// Contact
 String? get address; bool get isBestChoice;
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCopyWith<Place> get copyWith => _$PlaceCopyWithImpl<Place>(this as Place, _$identity);

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Place&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&const DeepCollectionEquality().equals(other.categoryId, categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.distance, distance) || other.distance == distance)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.openingHours, openingHours) || other.openingHours == openingHours)&&(identical(other.address, address) || other.address == address)&&(identical(other.isBestChoice, isBestChoice) || other.isBestChoice == isBestChoice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,locationId,lat,lng,const DeepCollectionEquality().hash(categoryId),description,distance,const DeepCollectionEquality().hash(images),rating,reviewCount,priceLevel,priceRange,const DeepCollectionEquality().hash(tags),openingHours,address,isBestChoice);

@override
String toString() {
  return 'Place(id: $id, name: $name, locationId: $locationId, lat: $lat, lng: $lng, categoryId: $categoryId, description: $description, distance: $distance, images: $images, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, priceRange: $priceRange, tags: $tags, openingHours: $openingHours, address: $address, isBestChoice: $isBestChoice)';
}


}

/// @nodoc
abstract mixin class $PlaceCopyWith<$Res>  {
  factory $PlaceCopyWith(Place value, $Res Function(Place) _then) = _$PlaceCopyWithImpl;
@useResult
$Res call({
 String id, String name, String locationId, double lat, double lng, List<String> categoryId, String? description, double distance, List<String> images, double rating, int reviewCount, int? priceLevel, String? priceRange, List<String> tags, OpeningHours? openingHours, String? address, bool isBestChoice
});


$OpeningHoursCopyWith<$Res>? get openingHours;

}
/// @nodoc
class _$PlaceCopyWithImpl<$Res>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._self, this._then);

  final Place _self;
  final $Res Function(Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? locationId = null,Object? lat = null,Object? lng = null,Object? categoryId = null,Object? description = freezed,Object? distance = null,Object? images = null,Object? rating = null,Object? reviewCount = null,Object? priceLevel = freezed,Object? priceRange = freezed,Object? tags = null,Object? openingHours = freezed,Object? address = freezed,Object? isBestChoice = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as OpeningHours?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isBestChoice: null == isBestChoice ? _self.isBestChoice : isBestChoice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
    return null;
  }

  return $OpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
    return _then(_self.copyWith(openingHours: value));
  });
}
}


/// Adds pattern-matching-related methods to [Place].
extension PlacePatterns on Place {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Place value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Place value)  $default,){
final _that = this;
switch (_that) {
case _Place():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Place value)?  $default,){
final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String locationId,  double lat,  double lng,  List<String> categoryId,  String? description,  double distance,  List<String> images,  double rating,  int reviewCount,  int? priceLevel,  String? priceRange,  List<String> tags,  OpeningHours? openingHours,  String? address,  bool isBestChoice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.name,_that.locationId,_that.lat,_that.lng,_that.categoryId,_that.description,_that.distance,_that.images,_that.rating,_that.reviewCount,_that.priceLevel,_that.priceRange,_that.tags,_that.openingHours,_that.address,_that.isBestChoice);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String locationId,  double lat,  double lng,  List<String> categoryId,  String? description,  double distance,  List<String> images,  double rating,  int reviewCount,  int? priceLevel,  String? priceRange,  List<String> tags,  OpeningHours? openingHours,  String? address,  bool isBestChoice)  $default,) {final _that = this;
switch (_that) {
case _Place():
return $default(_that.id,_that.name,_that.locationId,_that.lat,_that.lng,_that.categoryId,_that.description,_that.distance,_that.images,_that.rating,_that.reviewCount,_that.priceLevel,_that.priceRange,_that.tags,_that.openingHours,_that.address,_that.isBestChoice);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String locationId,  double lat,  double lng,  List<String> categoryId,  String? description,  double distance,  List<String> images,  double rating,  int reviewCount,  int? priceLevel,  String? priceRange,  List<String> tags,  OpeningHours? openingHours,  String? address,  bool isBestChoice)?  $default,) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.name,_that.locationId,_that.lat,_that.lng,_that.categoryId,_that.description,_that.distance,_that.images,_that.rating,_that.reviewCount,_that.priceLevel,_that.priceRange,_that.tags,_that.openingHours,_that.address,_that.isBestChoice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Place extends Place {
  const _Place({required this.id, required this.name, required this.locationId, required this.lat, required this.lng, final  List<String> categoryId = const <String>[], this.description, this.distance = 0, final  List<String> images = const <String>[], this.rating = 0.0, this.reviewCount = 0, this.priceLevel, this.priceRange, final  List<String> tags = const <String>[], this.openingHours, this.address, this.isBestChoice = false}): _categoryId = categoryId,_images = images,_tags = tags,super._();
  factory _Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

@override final  String id;
@override final  String name;
@override final  String locationId;
@override final  double lat;
@override final  double lng;
 final  List<String> _categoryId;
@override@JsonKey() List<String> get categoryId {
  if (_categoryId is EqualUnmodifiableListView) return _categoryId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryId);
}

@override final  String? description;
@override@JsonKey() final  double distance;
// Images
 final  List<String> _images;
// Images
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

// Ratings
@override@JsonKey() final  double rating;
@override@JsonKey() final  int reviewCount;
// Price range: 1-4 (cheap -> expensive)
// 1 = $    Budget       (~under 50,000 VND / ~$2)      e.g. street food, local quán
// 2 = $$   Moderate     (~50,000 - 150,000 VND)        e.g. casual cafes, mid-range restaurants
// 3 = $$$  Expensive    (~150,000 - 400,000 VND)       e.g. upscale dining, rooftop bars
// 4 = $$$$ Very Expensive (~400,000+ VND)              e.g. fine dining, luxury hotels
@override final  int? priceLevel;
@override final  String? priceRange;
// Tags: "local", "trendy", "hidden_gem"
 final  List<String> _tags;
// Tags: "local", "trendy", "hidden_gem"
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

// Open hours (simple first)
@override final  OpeningHours? openingHours;
// Contact
@override final  String? address;
@override@JsonKey() final  bool isBestChoice;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceCopyWith<_Place> get copyWith => __$PlaceCopyWithImpl<_Place>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Place&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&const DeepCollectionEquality().equals(other._categoryId, _categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.distance, distance) || other.distance == distance)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.openingHours, openingHours) || other.openingHours == openingHours)&&(identical(other.address, address) || other.address == address)&&(identical(other.isBestChoice, isBestChoice) || other.isBestChoice == isBestChoice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,locationId,lat,lng,const DeepCollectionEquality().hash(_categoryId),description,distance,const DeepCollectionEquality().hash(_images),rating,reviewCount,priceLevel,priceRange,const DeepCollectionEquality().hash(_tags),openingHours,address,isBestChoice);

@override
String toString() {
  return 'Place(id: $id, name: $name, locationId: $locationId, lat: $lat, lng: $lng, categoryId: $categoryId, description: $description, distance: $distance, images: $images, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, priceRange: $priceRange, tags: $tags, openingHours: $openingHours, address: $address, isBestChoice: $isBestChoice)';
}


}

/// @nodoc
abstract mixin class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) _then) = __$PlaceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String locationId, double lat, double lng, List<String> categoryId, String? description, double distance, List<String> images, double rating, int reviewCount, int? priceLevel, String? priceRange, List<String> tags, OpeningHours? openingHours, String? address, bool isBestChoice
});


@override $OpeningHoursCopyWith<$Res>? get openingHours;

}
/// @nodoc
class __$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(this._self, this._then);

  final _Place _self;
  final $Res Function(_Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? locationId = null,Object? lat = null,Object? lng = null,Object? categoryId = null,Object? description = freezed,Object? distance = null,Object? images = null,Object? rating = null,Object? reviewCount = null,Object? priceLevel = freezed,Object? priceRange = freezed,Object? tags = null,Object? openingHours = freezed,Object? address = freezed,Object? isBestChoice = null,}) {
  return _then(_Place(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,categoryId: null == categoryId ? _self._categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as OpeningHours?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isBestChoice: null == isBestChoice ? _self.isBestChoice : isBestChoice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
    return null;
  }

  return $OpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
    return _then(_self.copyWith(openingHours: value));
  });
}
}

// dart format on
