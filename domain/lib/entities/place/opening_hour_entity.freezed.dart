// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_hour_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DayOpeningHours {

 int get day;// Null openTime/closeTime means closed that day
 String? get openTime;// e.g. "07:00"
 String? get closeTime;// e.g. "22:00"
 bool get isClosed;
/// Create a copy of DayOpeningHours
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayOpeningHoursCopyWith<DayOpeningHours> get copyWith => _$DayOpeningHoursCopyWithImpl<DayOpeningHours>(this as DayOpeningHours, _$identity);

  /// Serializes this DayOpeningHours to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayOpeningHours&&(identical(other.day, day) || other.day == day)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,openTime,closeTime,isClosed);

@override
String toString() {
  return 'DayOpeningHours(day: $day, openTime: $openTime, closeTime: $closeTime, isClosed: $isClosed)';
}


}

/// @nodoc
abstract mixin class $DayOpeningHoursCopyWith<$Res>  {
  factory $DayOpeningHoursCopyWith(DayOpeningHours value, $Res Function(DayOpeningHours) _then) = _$DayOpeningHoursCopyWithImpl;
@useResult
$Res call({
 int day, String? openTime, String? closeTime, bool isClosed
});




}
/// @nodoc
class _$DayOpeningHoursCopyWithImpl<$Res>
    implements $DayOpeningHoursCopyWith<$Res> {
  _$DayOpeningHoursCopyWithImpl(this._self, this._then);

  final DayOpeningHours _self;
  final $Res Function(DayOpeningHours) _then;

/// Create a copy of DayOpeningHours
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? openTime = freezed,Object? closeTime = freezed,Object? isClosed = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,openTime: freezed == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String?,closeTime: freezed == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DayOpeningHours].
extension DayOpeningHoursPatterns on DayOpeningHours {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayOpeningHours value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayOpeningHours() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayOpeningHours value)  $default,){
final _that = this;
switch (_that) {
case _DayOpeningHours():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayOpeningHours value)?  $default,){
final _that = this;
switch (_that) {
case _DayOpeningHours() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int day,  String? openTime,  String? closeTime,  bool isClosed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayOpeningHours() when $default != null:
return $default(_that.day,_that.openTime,_that.closeTime,_that.isClosed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int day,  String? openTime,  String? closeTime,  bool isClosed)  $default,) {final _that = this;
switch (_that) {
case _DayOpeningHours():
return $default(_that.day,_that.openTime,_that.closeTime,_that.isClosed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int day,  String? openTime,  String? closeTime,  bool isClosed)?  $default,) {final _that = this;
switch (_that) {
case _DayOpeningHours() when $default != null:
return $default(_that.day,_that.openTime,_that.closeTime,_that.isClosed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayOpeningHours implements DayOpeningHours {
  const _DayOpeningHours({required this.day, this.openTime, this.closeTime, this.isClosed = false});
  factory _DayOpeningHours.fromJson(Map<String, dynamic> json) => _$DayOpeningHoursFromJson(json);

@override final  int day;
// Null openTime/closeTime means closed that day
@override final  String? openTime;
// e.g. "07:00"
@override final  String? closeTime;
// e.g. "22:00"
@override@JsonKey() final  bool isClosed;

/// Create a copy of DayOpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayOpeningHoursCopyWith<_DayOpeningHours> get copyWith => __$DayOpeningHoursCopyWithImpl<_DayOpeningHours>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayOpeningHoursToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayOpeningHours&&(identical(other.day, day) || other.day == day)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,openTime,closeTime,isClosed);

@override
String toString() {
  return 'DayOpeningHours(day: $day, openTime: $openTime, closeTime: $closeTime, isClosed: $isClosed)';
}


}

/// @nodoc
abstract mixin class _$DayOpeningHoursCopyWith<$Res> implements $DayOpeningHoursCopyWith<$Res> {
  factory _$DayOpeningHoursCopyWith(_DayOpeningHours value, $Res Function(_DayOpeningHours) _then) = __$DayOpeningHoursCopyWithImpl;
@override @useResult
$Res call({
 int day, String? openTime, String? closeTime, bool isClosed
});




}
/// @nodoc
class __$DayOpeningHoursCopyWithImpl<$Res>
    implements _$DayOpeningHoursCopyWith<$Res> {
  __$DayOpeningHoursCopyWithImpl(this._self, this._then);

  final _DayOpeningHours _self;
  final $Res Function(_DayOpeningHours) _then;

/// Create a copy of DayOpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? openTime = freezed,Object? closeTime = freezed,Object? isClosed = null,}) {
  return _then(_DayOpeningHours(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,openTime: freezed == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String?,closeTime: freezed == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$OpeningHours {

 List<DayOpeningHours> get schedule;// Handles 24/7 places without needing 7 entries
 bool get isOpen24Hours;
/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<OpeningHours> get copyWith => _$OpeningHoursCopyWithImpl<OpeningHours>(this as OpeningHours, _$identity);

  /// Serializes this OpeningHours to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpeningHours&&const DeepCollectionEquality().equals(other.schedule, schedule)&&(identical(other.isOpen24Hours, isOpen24Hours) || other.isOpen24Hours == isOpen24Hours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(schedule),isOpen24Hours);

@override
String toString() {
  return 'OpeningHours(schedule: $schedule, isOpen24Hours: $isOpen24Hours)';
}


}

/// @nodoc
abstract mixin class $OpeningHoursCopyWith<$Res>  {
  factory $OpeningHoursCopyWith(OpeningHours value, $Res Function(OpeningHours) _then) = _$OpeningHoursCopyWithImpl;
@useResult
$Res call({
 List<DayOpeningHours> schedule, bool isOpen24Hours
});




}
/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._self, this._then);

  final OpeningHours _self;
  final $Res Function(OpeningHours) _then;

/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schedule = null,Object? isOpen24Hours = null,}) {
  return _then(_self.copyWith(
schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<DayOpeningHours>,isOpen24Hours: null == isOpen24Hours ? _self.isOpen24Hours : isOpen24Hours // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OpeningHours].
extension OpeningHoursPatterns on OpeningHours {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpeningHours value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpeningHours value)  $default,){
final _that = this;
switch (_that) {
case _OpeningHours():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpeningHours value)?  $default,){
final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DayOpeningHours> schedule,  bool isOpen24Hours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
return $default(_that.schedule,_that.isOpen24Hours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DayOpeningHours> schedule,  bool isOpen24Hours)  $default,) {final _that = this;
switch (_that) {
case _OpeningHours():
return $default(_that.schedule,_that.isOpen24Hours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DayOpeningHours> schedule,  bool isOpen24Hours)?  $default,) {final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
return $default(_that.schedule,_that.isOpen24Hours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpeningHours implements OpeningHours {
  const _OpeningHours({final  List<DayOpeningHours> schedule = const <DayOpeningHours>[], this.isOpen24Hours = false}): _schedule = schedule;
  factory _OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);

 final  List<DayOpeningHours> _schedule;
@override@JsonKey() List<DayOpeningHours> get schedule {
  if (_schedule is EqualUnmodifiableListView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedule);
}

// Handles 24/7 places without needing 7 entries
@override@JsonKey() final  bool isOpen24Hours;

/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpeningHoursCopyWith<_OpeningHours> get copyWith => __$OpeningHoursCopyWithImpl<_OpeningHours>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpeningHoursToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpeningHours&&const DeepCollectionEquality().equals(other._schedule, _schedule)&&(identical(other.isOpen24Hours, isOpen24Hours) || other.isOpen24Hours == isOpen24Hours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedule),isOpen24Hours);

@override
String toString() {
  return 'OpeningHours(schedule: $schedule, isOpen24Hours: $isOpen24Hours)';
}


}

/// @nodoc
abstract mixin class _$OpeningHoursCopyWith<$Res> implements $OpeningHoursCopyWith<$Res> {
  factory _$OpeningHoursCopyWith(_OpeningHours value, $Res Function(_OpeningHours) _then) = __$OpeningHoursCopyWithImpl;
@override @useResult
$Res call({
 List<DayOpeningHours> schedule, bool isOpen24Hours
});




}
/// @nodoc
class __$OpeningHoursCopyWithImpl<$Res>
    implements _$OpeningHoursCopyWith<$Res> {
  __$OpeningHoursCopyWithImpl(this._self, this._then);

  final _OpeningHours _self;
  final $Res Function(_OpeningHours) _then;

/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schedule = null,Object? isOpen24Hours = null,}) {
  return _then(_OpeningHours(
schedule: null == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<DayOpeningHours>,isOpen24Hours: null == isOpen24Hours ? _self.isOpen24Hours : isOpen24Hours // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
