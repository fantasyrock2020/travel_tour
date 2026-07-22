// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Location {

 String get id; String get name;// Type: province / commune
 LocationType get type;// Parent ID (null for root like province)
 String? get parentId; List<Location> get communes;// For map features
 double? get lat; double? get lng;// Optional: slug for SEO or routing
 String? get slug; String? get image; List<String>? get previousDistricts;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.communes, communes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.previousDistricts, previousDistricts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,parentId,const DeepCollectionEquality().hash(communes),lat,lng,slug,image,const DeepCollectionEquality().hash(previousDistricts));

@override
String toString() {
  return 'Location(id: $id, name: $name, type: $type, parentId: $parentId, communes: $communes, lat: $lat, lng: $lng, slug: $slug, image: $image, previousDistricts: $previousDistricts)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
 String id, String name, LocationType type, String? parentId, List<Location> communes, double? lat, double? lng, String? slug, String? image, List<String>? previousDistricts
});




}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? parentId = freezed,Object? communes = null,Object? lat = freezed,Object? lng = freezed,Object? slug = freezed,Object? image = freezed,Object? previousDistricts = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LocationType,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,communes: null == communes ? _self.communes : communes // ignore: cast_nullable_to_non_nullable
as List<Location>,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,previousDistricts: freezed == previousDistricts ? _self.previousDistricts : previousDistricts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Location value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Location() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Location value)  $default,){
final _that = this;
switch (_that) {
case _Location():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Location value)?  $default,){
final _that = this;
switch (_that) {
case _Location() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  LocationType type,  String? parentId,  List<Location> communes,  double? lat,  double? lng,  String? slug,  String? image,  List<String>? previousDistricts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.parentId,_that.communes,_that.lat,_that.lng,_that.slug,_that.image,_that.previousDistricts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  LocationType type,  String? parentId,  List<Location> communes,  double? lat,  double? lng,  String? slug,  String? image,  List<String>? previousDistricts)  $default,) {final _that = this;
switch (_that) {
case _Location():
return $default(_that.id,_that.name,_that.type,_that.parentId,_that.communes,_that.lat,_that.lng,_that.slug,_that.image,_that.previousDistricts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  LocationType type,  String? parentId,  List<Location> communes,  double? lat,  double? lng,  String? slug,  String? image,  List<String>? previousDistricts)?  $default,) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.parentId,_that.communes,_that.lat,_that.lng,_that.slug,_that.image,_that.previousDistricts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Location implements Location {
  const _Location({required this.id, required this.name, required this.type, this.parentId, final  List<Location> communes = const <Location>[], this.lat, this.lng, this.slug, this.image, final  List<String>? previousDistricts}): _communes = communes,_previousDistricts = previousDistricts;
  factory _Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

@override final  String id;
@override final  String name;
// Type: province / commune
@override final  LocationType type;
// Parent ID (null for root like province)
@override final  String? parentId;
 final  List<Location> _communes;
@override@JsonKey() List<Location> get communes {
  if (_communes is EqualUnmodifiableListView) return _communes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_communes);
}

// For map features
@override final  double? lat;
@override final  double? lng;
// Optional: slug for SEO or routing
@override final  String? slug;
@override final  String? image;
 final  List<String>? _previousDistricts;
@override List<String>? get previousDistricts {
  final value = _previousDistricts;
  if (value == null) return null;
  if (_previousDistricts is EqualUnmodifiableListView) return _previousDistricts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._communes, _communes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._previousDistricts, _previousDistricts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,parentId,const DeepCollectionEquality().hash(_communes),lat,lng,slug,image,const DeepCollectionEquality().hash(_previousDistricts));

@override
String toString() {
  return 'Location(id: $id, name: $name, type: $type, parentId: $parentId, communes: $communes, lat: $lat, lng: $lng, slug: $slug, image: $image, previousDistricts: $previousDistricts)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, LocationType type, String? parentId, List<Location> communes, double? lat, double? lng, String? slug, String? image, List<String>? previousDistricts
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? parentId = freezed,Object? communes = null,Object? lat = freezed,Object? lng = freezed,Object? slug = freezed,Object? image = freezed,Object? previousDistricts = freezed,}) {
  return _then(_Location(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LocationType,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,communes: null == communes ? _self._communes : communes // ignore: cast_nullable_to_non_nullable
as List<Location>,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,previousDistricts: freezed == previousDistricts ? _self._previousDistricts : previousDistricts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
