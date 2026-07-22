// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePlaceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePlaceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePlaceEvent()';
}


}

/// @nodoc
class $HomePlaceEventCopyWith<$Res>  {
$HomePlaceEventCopyWith(HomePlaceEvent _, $Res Function(HomePlaceEvent) __);
}


/// Adds pattern-matching-related methods to [HomePlaceEvent].
extension HomePlaceEventPatterns on HomePlaceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ChangeCategory value)?  changeCategory,TResult Function( _LoadPlaces value)?  loadPlaces,TResult Function( _ApplyFilter value)?  applyFilter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that);case _LoadPlaces() when loadPlaces != null:
return loadPlaces(_that);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ChangeCategory value)  changeCategory,required TResult Function( _LoadPlaces value)  loadPlaces,required TResult Function( _ApplyFilter value)  applyFilter,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ChangeCategory():
return changeCategory(_that);case _LoadPlaces():
return loadPlaces(_that);case _ApplyFilter():
return applyFilter(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ChangeCategory value)?  changeCategory,TResult? Function( _LoadPlaces value)?  loadPlaces,TResult? Function( _ApplyFilter value)?  applyFilter,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that);case _LoadPlaces() when loadPlaces != null:
return loadPlaces(_that);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? locationId)?  started,TResult Function( String id)?  changeCategory,TResult Function( String? categoryId,  String? locationId)?  loadPlaces,TResult Function( PlaceFilter? filter)?  applyFilter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.locationId);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that.id);case _LoadPlaces() when loadPlaces != null:
return loadPlaces(_that.categoryId,_that.locationId);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that.filter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? locationId)  started,required TResult Function( String id)  changeCategory,required TResult Function( String? categoryId,  String? locationId)  loadPlaces,required TResult Function( PlaceFilter? filter)  applyFilter,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.locationId);case _ChangeCategory():
return changeCategory(_that.id);case _LoadPlaces():
return loadPlaces(_that.categoryId,_that.locationId);case _ApplyFilter():
return applyFilter(_that.filter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? locationId)?  started,TResult? Function( String id)?  changeCategory,TResult? Function( String? categoryId,  String? locationId)?  loadPlaces,TResult? Function( PlaceFilter? filter)?  applyFilter,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.locationId);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that.id);case _LoadPlaces() when loadPlaces != null:
return loadPlaces(_that.categoryId,_that.locationId);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that.filter);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomePlaceEvent {
  const _Started(this.locationId);
  

 final  String? locationId;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.locationId, locationId) || other.locationId == locationId));
}


@override
int get hashCode => Object.hash(runtimeType,locationId);

@override
String toString() {
  return 'HomePlaceEvent.started(locationId: $locationId)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HomePlaceEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 String? locationId
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationId = freezed,}) {
  return _then(_Started(
freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ChangeCategory implements HomePlaceEvent {
  const _ChangeCategory(this.id);
  

 final  String id;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCategoryCopyWith<_ChangeCategory> get copyWith => __$ChangeCategoryCopyWithImpl<_ChangeCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeCategory&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'HomePlaceEvent.changeCategory(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ChangeCategoryCopyWith<$Res> implements $HomePlaceEventCopyWith<$Res> {
  factory _$ChangeCategoryCopyWith(_ChangeCategory value, $Res Function(_ChangeCategory) _then) = __$ChangeCategoryCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$ChangeCategoryCopyWithImpl<$Res>
    implements _$ChangeCategoryCopyWith<$Res> {
  __$ChangeCategoryCopyWithImpl(this._self, this._then);

  final _ChangeCategory _self;
  final $Res Function(_ChangeCategory) _then;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_ChangeCategory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadPlaces implements HomePlaceEvent {
  const _LoadPlaces(this.categoryId, this.locationId);
  

 final  String? categoryId;
 final  String? locationId;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadPlacesCopyWith<_LoadPlaces> get copyWith => __$LoadPlacesCopyWithImpl<_LoadPlaces>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadPlaces&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.locationId, locationId) || other.locationId == locationId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,locationId);

@override
String toString() {
  return 'HomePlaceEvent.loadPlaces(categoryId: $categoryId, locationId: $locationId)';
}


}

/// @nodoc
abstract mixin class _$LoadPlacesCopyWith<$Res> implements $HomePlaceEventCopyWith<$Res> {
  factory _$LoadPlacesCopyWith(_LoadPlaces value, $Res Function(_LoadPlaces) _then) = __$LoadPlacesCopyWithImpl;
@useResult
$Res call({
 String? categoryId, String? locationId
});




}
/// @nodoc
class __$LoadPlacesCopyWithImpl<$Res>
    implements _$LoadPlacesCopyWith<$Res> {
  __$LoadPlacesCopyWithImpl(this._self, this._then);

  final _LoadPlaces _self;
  final $Res Function(_LoadPlaces) _then;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? locationId = freezed,}) {
  return _then(_LoadPlaces(
freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ApplyFilter implements HomePlaceEvent {
  const _ApplyFilter(this.filter);
  

 final  PlaceFilter? filter;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyFilterCopyWith<_ApplyFilter> get copyWith => __$ApplyFilterCopyWithImpl<_ApplyFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyFilter&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'HomePlaceEvent.applyFilter(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$ApplyFilterCopyWith<$Res> implements $HomePlaceEventCopyWith<$Res> {
  factory _$ApplyFilterCopyWith(_ApplyFilter value, $Res Function(_ApplyFilter) _then) = __$ApplyFilterCopyWithImpl;
@useResult
$Res call({
 PlaceFilter? filter
});


$PlaceFilterCopyWith<$Res>? get filter;

}
/// @nodoc
class __$ApplyFilterCopyWithImpl<$Res>
    implements _$ApplyFilterCopyWith<$Res> {
  __$ApplyFilterCopyWithImpl(this._self, this._then);

  final _ApplyFilter _self;
  final $Res Function(_ApplyFilter) _then;

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = freezed,}) {
  return _then(_ApplyFilter(
freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as PlaceFilter?,
  ));
}

/// Create a copy of HomePlaceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceFilterCopyWith<$Res>? get filter {
    if (_self.filter == null) {
    return null;
  }

  return $PlaceFilterCopyWith<$Res>(_self.filter!, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc
mixin _$HomePlaceState {

 PlaceFilter get filter; bool get success; List<Place> get places;
/// Create a copy of HomePlaceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePlaceStateCopyWith<HomePlaceState> get copyWith => _$HomePlaceStateCopyWithImpl<HomePlaceState>(this as HomePlaceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePlaceState&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.places, places));
}


@override
int get hashCode => Object.hash(runtimeType,filter,success,const DeepCollectionEquality().hash(places));

@override
String toString() {
  return 'HomePlaceState(filter: $filter, success: $success, places: $places)';
}


}

/// @nodoc
abstract mixin class $HomePlaceStateCopyWith<$Res>  {
  factory $HomePlaceStateCopyWith(HomePlaceState value, $Res Function(HomePlaceState) _then) = _$HomePlaceStateCopyWithImpl;
@useResult
$Res call({
 PlaceFilter filter, bool success, List<Place> places
});


$PlaceFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$HomePlaceStateCopyWithImpl<$Res>
    implements $HomePlaceStateCopyWith<$Res> {
  _$HomePlaceStateCopyWithImpl(this._self, this._then);

  final HomePlaceState _self;
  final $Res Function(HomePlaceState) _then;

/// Create a copy of HomePlaceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,Object? success = null,Object? places = null,}) {
  return _then(_self.copyWith(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as PlaceFilter,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,places: null == places ? _self.places : places // ignore: cast_nullable_to_non_nullable
as List<Place>,
  ));
}
/// Create a copy of HomePlaceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceFilterCopyWith<$Res> get filter {
  
  return $PlaceFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomePlaceState].
extension HomePlaceStatePatterns on HomePlaceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePlaceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePlaceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePlaceState value)  $default,){
final _that = this;
switch (_that) {
case _HomePlaceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePlaceState value)?  $default,){
final _that = this;
switch (_that) {
case _HomePlaceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PlaceFilter filter,  bool success,  List<Place> places)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePlaceState() when $default != null:
return $default(_that.filter,_that.success,_that.places);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PlaceFilter filter,  bool success,  List<Place> places)  $default,) {final _that = this;
switch (_that) {
case _HomePlaceState():
return $default(_that.filter,_that.success,_that.places);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PlaceFilter filter,  bool success,  List<Place> places)?  $default,) {final _that = this;
switch (_that) {
case _HomePlaceState() when $default != null:
return $default(_that.filter,_that.success,_that.places);case _:
  return null;

}
}

}

/// @nodoc


class _HomePlaceState implements HomePlaceState {
  const _HomePlaceState({required this.filter, this.success = false, final  List<Place> places = const <Place>[]}): _places = places;
  

@override final  PlaceFilter filter;
@override@JsonKey() final  bool success;
 final  List<Place> _places;
@override@JsonKey() List<Place> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}


/// Create a copy of HomePlaceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePlaceStateCopyWith<_HomePlaceState> get copyWith => __$HomePlaceStateCopyWithImpl<_HomePlaceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePlaceState&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._places, _places));
}


@override
int get hashCode => Object.hash(runtimeType,filter,success,const DeepCollectionEquality().hash(_places));

@override
String toString() {
  return 'HomePlaceState(filter: $filter, success: $success, places: $places)';
}


}

/// @nodoc
abstract mixin class _$HomePlaceStateCopyWith<$Res> implements $HomePlaceStateCopyWith<$Res> {
  factory _$HomePlaceStateCopyWith(_HomePlaceState value, $Res Function(_HomePlaceState) _then) = __$HomePlaceStateCopyWithImpl;
@override @useResult
$Res call({
 PlaceFilter filter, bool success, List<Place> places
});


@override $PlaceFilterCopyWith<$Res> get filter;

}
/// @nodoc
class __$HomePlaceStateCopyWithImpl<$Res>
    implements _$HomePlaceStateCopyWith<$Res> {
  __$HomePlaceStateCopyWithImpl(this._self, this._then);

  final _HomePlaceState _self;
  final $Res Function(_HomePlaceState) _then;

/// Create a copy of HomePlaceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,Object? success = null,Object? places = null,}) {
  return _then(_HomePlaceState(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as PlaceFilter,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,places: null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<Place>,
  ));
}

/// Create a copy of HomePlaceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceFilterCopyWith<$Res> get filter {
  
  return $PlaceFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

// dart format on
