// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceFilter {

 Set<PlaceCategoryEnum> get categories; Set<String> get categoryIds; Set<PlaceStatusFilterEnum> get statuses; double? get minDistanceKm; double? get maxDistanceKm; int? get maxPriceLevel; double? get minRating; Set<String> get tags;
/// Create a copy of PlaceFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceFilterCopyWith<PlaceFilter> get copyWith => _$PlaceFilterCopyWithImpl<PlaceFilter>(this as PlaceFilter, _$identity);

  /// Serializes this PlaceFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceFilter&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.categoryIds, categoryIds)&&const DeepCollectionEquality().equals(other.statuses, statuses)&&(identical(other.minDistanceKm, minDistanceKm) || other.minDistanceKm == minDistanceKm)&&(identical(other.maxDistanceKm, maxDistanceKm) || other.maxDistanceKm == maxDistanceKm)&&(identical(other.maxPriceLevel, maxPriceLevel) || other.maxPriceLevel == maxPriceLevel)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(categoryIds),const DeepCollectionEquality().hash(statuses),minDistanceKm,maxDistanceKm,maxPriceLevel,minRating,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'PlaceFilter(categories: $categories, categoryIds: $categoryIds, statuses: $statuses, minDistanceKm: $minDistanceKm, maxDistanceKm: $maxDistanceKm, maxPriceLevel: $maxPriceLevel, minRating: $minRating, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $PlaceFilterCopyWith<$Res>  {
  factory $PlaceFilterCopyWith(PlaceFilter value, $Res Function(PlaceFilter) _then) = _$PlaceFilterCopyWithImpl;
@useResult
$Res call({
 Set<PlaceCategoryEnum> categories, Set<String> categoryIds, Set<PlaceStatusFilterEnum> statuses, double? minDistanceKm, double? maxDistanceKm, int? maxPriceLevel, double? minRating, Set<String> tags
});




}
/// @nodoc
class _$PlaceFilterCopyWithImpl<$Res>
    implements $PlaceFilterCopyWith<$Res> {
  _$PlaceFilterCopyWithImpl(this._self, this._then);

  final PlaceFilter _self;
  final $Res Function(PlaceFilter) _then;

/// Create a copy of PlaceFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? categoryIds = null,Object? statuses = null,Object? minDistanceKm = freezed,Object? maxDistanceKm = freezed,Object? maxPriceLevel = freezed,Object? minRating = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Set<PlaceCategoryEnum>,categoryIds: null == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as Set<String>,statuses: null == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as Set<PlaceStatusFilterEnum>,minDistanceKm: freezed == minDistanceKm ? _self.minDistanceKm : minDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,maxDistanceKm: freezed == maxDistanceKm ? _self.maxDistanceKm : maxDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,maxPriceLevel: freezed == maxPriceLevel ? _self.maxPriceLevel : maxPriceLevel // ignore: cast_nullable_to_non_nullable
as int?,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as double?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceFilter].
extension PlaceFilterPatterns on PlaceFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceFilter value)  $default,){
final _that = this;
switch (_that) {
case _PlaceFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceFilter value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<PlaceCategoryEnum> categories,  Set<String> categoryIds,  Set<PlaceStatusFilterEnum> statuses,  double? minDistanceKm,  double? maxDistanceKm,  int? maxPriceLevel,  double? minRating,  Set<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceFilter() when $default != null:
return $default(_that.categories,_that.categoryIds,_that.statuses,_that.minDistanceKm,_that.maxDistanceKm,_that.maxPriceLevel,_that.minRating,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<PlaceCategoryEnum> categories,  Set<String> categoryIds,  Set<PlaceStatusFilterEnum> statuses,  double? minDistanceKm,  double? maxDistanceKm,  int? maxPriceLevel,  double? minRating,  Set<String> tags)  $default,) {final _that = this;
switch (_that) {
case _PlaceFilter():
return $default(_that.categories,_that.categoryIds,_that.statuses,_that.minDistanceKm,_that.maxDistanceKm,_that.maxPriceLevel,_that.minRating,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<PlaceCategoryEnum> categories,  Set<String> categoryIds,  Set<PlaceStatusFilterEnum> statuses,  double? minDistanceKm,  double? maxDistanceKm,  int? maxPriceLevel,  double? minRating,  Set<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _PlaceFilter() when $default != null:
return $default(_that.categories,_that.categoryIds,_that.statuses,_that.minDistanceKm,_that.maxDistanceKm,_that.maxPriceLevel,_that.minRating,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceFilter extends PlaceFilter {
  const _PlaceFilter({final  Set<PlaceCategoryEnum> categories = const <PlaceCategoryEnum>{}, final  Set<String> categoryIds = const <String>{}, final  Set<PlaceStatusFilterEnum> statuses = const <PlaceStatusFilterEnum>{}, this.minDistanceKm, this.maxDistanceKm, this.maxPriceLevel, this.minRating, final  Set<String> tags = const <String>{}}): _categories = categories,_categoryIds = categoryIds,_statuses = statuses,_tags = tags,super._();
  factory _PlaceFilter.fromJson(Map<String, dynamic> json) => _$PlaceFilterFromJson(json);

 final  Set<PlaceCategoryEnum> _categories;
@override@JsonKey() Set<PlaceCategoryEnum> get categories {
  if (_categories is EqualUnmodifiableSetView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_categories);
}

 final  Set<String> _categoryIds;
@override@JsonKey() Set<String> get categoryIds {
  if (_categoryIds is EqualUnmodifiableSetView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_categoryIds);
}

 final  Set<PlaceStatusFilterEnum> _statuses;
@override@JsonKey() Set<PlaceStatusFilterEnum> get statuses {
  if (_statuses is EqualUnmodifiableSetView) return _statuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_statuses);
}

@override final  double? minDistanceKm;
@override final  double? maxDistanceKm;
@override final  int? maxPriceLevel;
@override final  double? minRating;
 final  Set<String> _tags;
@override@JsonKey() Set<String> get tags {
  if (_tags is EqualUnmodifiableSetView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_tags);
}


/// Create a copy of PlaceFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceFilterCopyWith<_PlaceFilter> get copyWith => __$PlaceFilterCopyWithImpl<_PlaceFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceFilter&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._categoryIds, _categoryIds)&&const DeepCollectionEquality().equals(other._statuses, _statuses)&&(identical(other.minDistanceKm, minDistanceKm) || other.minDistanceKm == minDistanceKm)&&(identical(other.maxDistanceKm, maxDistanceKm) || other.maxDistanceKm == maxDistanceKm)&&(identical(other.maxPriceLevel, maxPriceLevel) || other.maxPriceLevel == maxPriceLevel)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_categoryIds),const DeepCollectionEquality().hash(_statuses),minDistanceKm,maxDistanceKm,maxPriceLevel,minRating,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'PlaceFilter(categories: $categories, categoryIds: $categoryIds, statuses: $statuses, minDistanceKm: $minDistanceKm, maxDistanceKm: $maxDistanceKm, maxPriceLevel: $maxPriceLevel, minRating: $minRating, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$PlaceFilterCopyWith<$Res> implements $PlaceFilterCopyWith<$Res> {
  factory _$PlaceFilterCopyWith(_PlaceFilter value, $Res Function(_PlaceFilter) _then) = __$PlaceFilterCopyWithImpl;
@override @useResult
$Res call({
 Set<PlaceCategoryEnum> categories, Set<String> categoryIds, Set<PlaceStatusFilterEnum> statuses, double? minDistanceKm, double? maxDistanceKm, int? maxPriceLevel, double? minRating, Set<String> tags
});




}
/// @nodoc
class __$PlaceFilterCopyWithImpl<$Res>
    implements _$PlaceFilterCopyWith<$Res> {
  __$PlaceFilterCopyWithImpl(this._self, this._then);

  final _PlaceFilter _self;
  final $Res Function(_PlaceFilter) _then;

/// Create a copy of PlaceFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? categoryIds = null,Object? statuses = null,Object? minDistanceKm = freezed,Object? maxDistanceKm = freezed,Object? maxPriceLevel = freezed,Object? minRating = freezed,Object? tags = null,}) {
  return _then(_PlaceFilter(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as Set<PlaceCategoryEnum>,categoryIds: null == categoryIds ? _self._categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as Set<String>,statuses: null == statuses ? _self._statuses : statuses // ignore: cast_nullable_to_non_nullable
as Set<PlaceStatusFilterEnum>,minDistanceKm: freezed == minDistanceKm ? _self.minDistanceKm : minDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,maxDistanceKm: freezed == maxDistanceKm ? _self.maxDistanceKm : maxDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,maxPriceLevel: freezed == maxPriceLevel ? _self.maxPriceLevel : maxPriceLevel // ignore: cast_nullable_to_non_nullable
as int?,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as double?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
