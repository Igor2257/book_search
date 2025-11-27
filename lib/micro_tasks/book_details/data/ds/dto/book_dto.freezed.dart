// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookDto {

 String get title; String? get description;@JsonKey(name: 'key') String get key; List<int> get covers; List<String> get subjects;@JsonKey(name: 'subject_places') List<String> get subjectPlaces;@JsonKey(name: 'subject_times') List<String> get subjectTimes;@JsonKey(name: 'links') List<LinkDto> get links;@JsonKey(name: 'created') Map<String, dynamic>? get created;@JsonKey(name: 'last_modified') Map<String, dynamic>? get lastModified;
/// Create a copy of BookDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookDtoCopyWith<BookDto> get copyWith => _$BookDtoCopyWithImpl<BookDto>(this as BookDto, _$identity);

  /// Serializes this BookDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.covers, covers)&&const DeepCollectionEquality().equals(other.subjects, subjects)&&const DeepCollectionEquality().equals(other.subjectPlaces, subjectPlaces)&&const DeepCollectionEquality().equals(other.subjectTimes, subjectTimes)&&const DeepCollectionEquality().equals(other.links, links)&&const DeepCollectionEquality().equals(other.created, created)&&const DeepCollectionEquality().equals(other.lastModified, lastModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,key,const DeepCollectionEquality().hash(covers),const DeepCollectionEquality().hash(subjects),const DeepCollectionEquality().hash(subjectPlaces),const DeepCollectionEquality().hash(subjectTimes),const DeepCollectionEquality().hash(links),const DeepCollectionEquality().hash(created),const DeepCollectionEquality().hash(lastModified));

@override
String toString() {
  return 'BookDto(title: $title, description: $description, key: $key, covers: $covers, subjects: $subjects, subjectPlaces: $subjectPlaces, subjectTimes: $subjectTimes, links: $links, created: $created, lastModified: $lastModified)';
}


}

/// @nodoc
abstract mixin class $BookDtoCopyWith<$Res>  {
  factory $BookDtoCopyWith(BookDto value, $Res Function(BookDto) _then) = _$BookDtoCopyWithImpl;
@useResult
$Res call({
 String title, String? description,@JsonKey(name: 'key') String key, List<int> covers, List<String> subjects,@JsonKey(name: 'subject_places') List<String> subjectPlaces,@JsonKey(name: 'subject_times') List<String> subjectTimes,@JsonKey(name: 'links') List<LinkDto> links,@JsonKey(name: 'created') Map<String, dynamic>? created,@JsonKey(name: 'last_modified') Map<String, dynamic>? lastModified
});




}
/// @nodoc
class _$BookDtoCopyWithImpl<$Res>
    implements $BookDtoCopyWith<$Res> {
  _$BookDtoCopyWithImpl(this._self, this._then);

  final BookDto _self;
  final $Res Function(BookDto) _then;

/// Create a copy of BookDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? key = null,Object? covers = null,Object? subjects = null,Object? subjectPlaces = null,Object? subjectTimes = null,Object? links = null,Object? created = freezed,Object? lastModified = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,covers: null == covers ? _self.covers : covers // ignore: cast_nullable_to_non_nullable
as List<int>,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>,subjectPlaces: null == subjectPlaces ? _self.subjectPlaces : subjectPlaces // ignore: cast_nullable_to_non_nullable
as List<String>,subjectTimes: null == subjectTimes ? _self.subjectTimes : subjectTimes // ignore: cast_nullable_to_non_nullable
as List<String>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<LinkDto>,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookDto].
extension BookDtoPatterns on BookDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookDto value)  $default,){
final _that = this;
switch (_that) {
case _BookDto():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookDto value)?  $default,){
final _that = this;
switch (_that) {
case _BookDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description, @JsonKey(name: 'key')  String key,  List<int> covers,  List<String> subjects, @JsonKey(name: 'subject_places')  List<String> subjectPlaces, @JsonKey(name: 'subject_times')  List<String> subjectTimes, @JsonKey(name: 'links')  List<LinkDto> links, @JsonKey(name: 'created')  Map<String, dynamic>? created, @JsonKey(name: 'last_modified')  Map<String, dynamic>? lastModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookDto() when $default != null:
return $default(_that.title,_that.description,_that.key,_that.covers,_that.subjects,_that.subjectPlaces,_that.subjectTimes,_that.links,_that.created,_that.lastModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description, @JsonKey(name: 'key')  String key,  List<int> covers,  List<String> subjects, @JsonKey(name: 'subject_places')  List<String> subjectPlaces, @JsonKey(name: 'subject_times')  List<String> subjectTimes, @JsonKey(name: 'links')  List<LinkDto> links, @JsonKey(name: 'created')  Map<String, dynamic>? created, @JsonKey(name: 'last_modified')  Map<String, dynamic>? lastModified)  $default,) {final _that = this;
switch (_that) {
case _BookDto():
return $default(_that.title,_that.description,_that.key,_that.covers,_that.subjects,_that.subjectPlaces,_that.subjectTimes,_that.links,_that.created,_that.lastModified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description, @JsonKey(name: 'key')  String key,  List<int> covers,  List<String> subjects, @JsonKey(name: 'subject_places')  List<String> subjectPlaces, @JsonKey(name: 'subject_times')  List<String> subjectTimes, @JsonKey(name: 'links')  List<LinkDto> links, @JsonKey(name: 'created')  Map<String, dynamic>? created, @JsonKey(name: 'last_modified')  Map<String, dynamic>? lastModified)?  $default,) {final _that = this;
switch (_that) {
case _BookDto() when $default != null:
return $default(_that.title,_that.description,_that.key,_that.covers,_that.subjects,_that.subjectPlaces,_that.subjectTimes,_that.links,_that.created,_that.lastModified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookDto implements BookDto {
  const _BookDto({required this.title, this.description, @JsonKey(name: 'key') required this.key, final  List<int> covers = const [], final  List<String> subjects = const [], @JsonKey(name: 'subject_places') final  List<String> subjectPlaces = const [], @JsonKey(name: 'subject_times') final  List<String> subjectTimes = const [], @JsonKey(name: 'links') final  List<LinkDto> links = const [], @JsonKey(name: 'created') final  Map<String, dynamic>? created, @JsonKey(name: 'last_modified') final  Map<String, dynamic>? lastModified}): _covers = covers,_subjects = subjects,_subjectPlaces = subjectPlaces,_subjectTimes = subjectTimes,_links = links,_created = created,_lastModified = lastModified;
  factory _BookDto.fromJson(Map<String, dynamic> json) => _$BookDtoFromJson(json);

@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'key') final  String key;
 final  List<int> _covers;
@override@JsonKey() List<int> get covers {
  if (_covers is EqualUnmodifiableListView) return _covers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_covers);
}

 final  List<String> _subjects;
@override@JsonKey() List<String> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}

 final  List<String> _subjectPlaces;
@override@JsonKey(name: 'subject_places') List<String> get subjectPlaces {
  if (_subjectPlaces is EqualUnmodifiableListView) return _subjectPlaces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjectPlaces);
}

 final  List<String> _subjectTimes;
@override@JsonKey(name: 'subject_times') List<String> get subjectTimes {
  if (_subjectTimes is EqualUnmodifiableListView) return _subjectTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjectTimes);
}

 final  List<LinkDto> _links;
@override@JsonKey(name: 'links') List<LinkDto> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}

 final  Map<String, dynamic>? _created;
@override@JsonKey(name: 'created') Map<String, dynamic>? get created {
  final value = _created;
  if (value == null) return null;
  if (_created is EqualUnmodifiableMapView) return _created;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _lastModified;
@override@JsonKey(name: 'last_modified') Map<String, dynamic>? get lastModified {
  final value = _lastModified;
  if (value == null) return null;
  if (_lastModified is EqualUnmodifiableMapView) return _lastModified;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of BookDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDtoCopyWith<_BookDto> get copyWith => __$BookDtoCopyWithImpl<_BookDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other._covers, _covers)&&const DeepCollectionEquality().equals(other._subjects, _subjects)&&const DeepCollectionEquality().equals(other._subjectPlaces, _subjectPlaces)&&const DeepCollectionEquality().equals(other._subjectTimes, _subjectTimes)&&const DeepCollectionEquality().equals(other._links, _links)&&const DeepCollectionEquality().equals(other._created, _created)&&const DeepCollectionEquality().equals(other._lastModified, _lastModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,key,const DeepCollectionEquality().hash(_covers),const DeepCollectionEquality().hash(_subjects),const DeepCollectionEquality().hash(_subjectPlaces),const DeepCollectionEquality().hash(_subjectTimes),const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_created),const DeepCollectionEquality().hash(_lastModified));

@override
String toString() {
  return 'BookDto(title: $title, description: $description, key: $key, covers: $covers, subjects: $subjects, subjectPlaces: $subjectPlaces, subjectTimes: $subjectTimes, links: $links, created: $created, lastModified: $lastModified)';
}


}

/// @nodoc
abstract mixin class _$BookDtoCopyWith<$Res> implements $BookDtoCopyWith<$Res> {
  factory _$BookDtoCopyWith(_BookDto value, $Res Function(_BookDto) _then) = __$BookDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description,@JsonKey(name: 'key') String key, List<int> covers, List<String> subjects,@JsonKey(name: 'subject_places') List<String> subjectPlaces,@JsonKey(name: 'subject_times') List<String> subjectTimes,@JsonKey(name: 'links') List<LinkDto> links,@JsonKey(name: 'created') Map<String, dynamic>? created,@JsonKey(name: 'last_modified') Map<String, dynamic>? lastModified
});




}
/// @nodoc
class __$BookDtoCopyWithImpl<$Res>
    implements _$BookDtoCopyWith<$Res> {
  __$BookDtoCopyWithImpl(this._self, this._then);

  final _BookDto _self;
  final $Res Function(_BookDto) _then;

/// Create a copy of BookDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? key = null,Object? covers = null,Object? subjects = null,Object? subjectPlaces = null,Object? subjectTimes = null,Object? links = null,Object? created = freezed,Object? lastModified = freezed,}) {
  return _then(_BookDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,covers: null == covers ? _self._covers : covers // ignore: cast_nullable_to_non_nullable
as List<int>,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>,subjectPlaces: null == subjectPlaces ? _self._subjectPlaces : subjectPlaces // ignore: cast_nullable_to_non_nullable
as List<String>,subjectTimes: null == subjectTimes ? _self._subjectTimes : subjectTimes // ignore: cast_nullable_to_non_nullable
as List<String>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<LinkDto>,created: freezed == created ? _self._created : created // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,lastModified: freezed == lastModified ? _self._lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
